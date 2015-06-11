<?php
//Stripe Payments Controller 
class SPController extends MainController{

	protected $rebilling_periods;
	protected $available_ps;
	protected $decimalZero;
	protected $stripePlans;

	public function __construct( $registry ){

		parent::__construct( $registry );

		$minTotal = $this->currency->convert( 0.5 , 'USD' , $this->currency->getCode() );

		if( ! defined( 'MODULE_CODE' ) )
			define( 'MODULE_CODE' , 'SP' );
		if( ! defined( 'MODULE_NAME' ) )
			define( 'MODULE_NAME' , 'stripe_payments' );
		if( ! defined( 'MIN_TOTAL' ) )
			define( 'MIN_TOTAL' , $minTotal );
		if( ! defined( 'TRANSACTION_CREATE_CUSTOMER' ) )
			define( 'TRANSACTION_CREATE_CUSTOMER' , 'Customer creation' );
		if( ! defined( 'TRANSACTION_CREATE_CHARGE' ) )
			define( 'TRANSACTION_CREATE_CHARGE' , 'Charge creation' );
		if( ! defined( 'TRANSACTION_CAPTURE_CHARGE' ) )
			define( 'TRANSACTION_CAPTURE_CHARGE' , 'Charge capture' );
		if( ! defined( 'TRANSACTION_REFUND_CHARGE' ) )
			define( 'TRANSACTION_REFUND_CHARGE' , 'Charge refund' );
		if( ! defined( 'TRANSACTION_CREATE_PLAN' ) )
			define( 'TRANSACTION_CREATE_PLAN' , 'Plan creation' );
		if( ! defined( 'TRANSACTION_CREATE_SUBSCRIPTION' ) )
			define( 'TRANSACTION_CREATE_SUBSCRIPTION' , 'Subscription creation' );
		if( ! defined( 'TRANSACTION_CANCEL_SUBSCRIPTION' ) )
			define( 'TRANSACTION_CANCEL_SUBSCRIPTION' , 'Subscription cancel' );
		if( ! defined( 'TRANSACTION_CREATE_INVOICE' ) )
			define( 'TRANSACTION_CREATE_INVOICE' , 'Create invoice' );
		if( ! defined( 'TRANSACTION_PAID_INVOICE' ) )
			define( 'TRANSACTION_PAID_INVOICE' , 'Invoice paid' );
		if( ! defined( 'TRANSACTION_CREATE_ORDER' ) )
			define( 'TRANSACTION_CREATE_ORDER' , 'Order #%d was created' );

		if( ! defined( 'PRO_MODE' ) )
			define( 'PRO_MODE' , false );

		$this->decimalZero = array( 'BIF' , 'CLP' , 'DJF' , 'GNF' , 'JPY' , 'KMF' , 'KRW' , 'MGA' , 'PYG' , 'RWF' , 'VND' , 'VUV' , 'XAF' , 'XOF' , 'XPF' , );

		$this->available_ps = array( 'pp_express' , 'stripe_payments' );
	}

	protected function currencyToMin( $value , $code ){
		if( in_array( $code , $this->decimalZero ) )
			return $value;
		return round( $value * 100 );
	}

	protected function minToCurrency( $value , $code ){
		if( in_array( $code , $this->decimalZero ) )
			return $value;
		return $value / 100;
	}

	protected function setApiKey(){
		$this->call( 'Stripe::setApiKey' , array( $this->getSecretApiKey() ) );
	}

	protected function getSecretApiKey(){
		if( $this->config->get( 'sp_test_mode' ) )
		{
			return $this->config->get( 'sp_test_secret_key' );
		}
		return $this->config->get( 'sp_live_secret_key' );
	}

	protected function getPublicApiKey(){
		if( $this->config->get( 'sp_test_mode' ) )
		{
			return $this->config->get( 'sp_test_public_key' );
		}
		return $this->config->get( 'sp_live_public_key' );
	}

	protected function call( $method , Array $args ){
		$result = new stdClass();
		$file = $this->sanitizePath( $this->request->server[ 'DOCUMENT_ROOT' ] . '/vendor/stripe/stripe-php/lib/Stripe.php' );
		if( file_exists( $file) )
			require_once( $file );
		else
		{
			$result->error = 'Stripe library is missing';
			return $result;
		}

		try
		{
			if( is_array( $method ) && is_object( $method[ 0 ] ) )
			{
				$obj = $method[ 0 ];
				$meth = $method[ 1 ];
				$result = $obj->{$meth}( $args[ 0 ] );
			}
			elseif( is_string( $method ) )
			{
				$result = call_user_func_array( $method , $args );
			}
			else
			{
				throw new Exeption( __METHOD__ . ' : Invalid type of object' );
			}
		}
		catch ( Stripe_ApiError $e )
		{
			$body = $e->getJsonBody();
			$err  = $body['error'];
			$result->error = $err['message'];
		}
		catch ( Stripe_CardError $e )
		{
			$body = $e->getJsonBody();
			$err  = $body['error'];
			$result->error = $err['message'];
		}
		catch ( Stripe_InvalidRequestError $e )
		{
			$body = $e->getJsonBody();
			$err  = $body['error'];
			$result->error = $err['message'];
		}
		catch ( Stripe_Error $e )
		{
			$body = $e->getJsonBody();
			$err  = $body['error'];
			$result->error = $err['message'];
		}
		catch ( Exception $e )
		{
			$result->error = $e->getMessage();
		}
		return $result;
	}

	protected function createCustomer( Array $data ){
		$return = new stdClass();

		if( empty( $data[ 'email' ] ) )
		{
			$return->error = 'Customer Email missing';
			return $return;
		}

		$mandatory = array( 'description' => null , 'source' => null , 'metadata' => null );
		foreach( $mandatory as $key => $val ){
			if( ! isset( $data[ $key ] ) )
				$data[ $key ] = $val;
		}

		$this->setApiKey();
		$this->debugLog->write( __METHOD__ . ' call' , $data );
		$customer = $this->call( 'Stripe_Customer::create' ,  array( $data ) );
		$this->debugLog->write( __METHOD__ . ' response' , $customer );

		if( isset( $customer->id ) )
		{
			$customer->customer_id = $this->customer->getId();
			$this->load->model( 'payment/stripe_payments' );
			$this->model_payment_stripe_payments->addTransaction( array( 'type' => TRANSACTION_CREATE_CUSTOMER , 'customer_ref' => $customer->id ) );
		}
		return $customer;
	}

	protected function createCharge( $data ){
		$return = new stdClass();

		if( empty( $data[ 'customer' ] ) )
		{
			$return->error = 'Customer is Missing';
			$this->debugLog->throwError( __METHOD__ . " - Customer is missing" );
			return $return;
		}

		$this->language->load( 'payment/stripe_payments' );

		if( empty( $data[ 'amount' ] ) || (float)$data[ 'amount' ] <= 0 )
		{
			$return->error = $this->language->get( 'error_invalid_amount' );
			$this->debugLog->throwError( __METHOD__ . ' - amount is missing' );
			return $return;
		}

		if( empty( $data[ 'currency' ] ) )
		{
			$return->error = $this->language->get( 'error_missing_currency' );
			$this->debugLog->throwError( __METHOD__ . ' - amount is missing' );
			return $return;
		}

		$mandatory = array( 'description' => null , 'receipt_email' => null , 'metadata' => null , 'customer' => null , 'statement_descriptor' => null , 'shipping' => null );
		foreach( $mandatory as $key => $val ){
			if( ! isset( $data[ $key ] ) )
				$data[ $key ] = $val;
		}

		$this->setApiKey();
		$this->debugLog->write( __METHOD__ . ' call' , $data );
		$charge = $this->call( 'Stripe_Charge::create' ,  array( $data ) );
		$this->debugLog->write( __METHOD__ . ' response' , $charge );

		if( isset( $charge->id ) )
		{
			$this->load->model( 'payment/stripe_payments' );
			$this->model_payment_stripe_payments->addTransaction( array( 'type' => TRANSACTION_CREATE_CHARGE , 'charge_ref' => $charge->id , 'amount'	=> $charge->amount , 'status' => $charge->status , ) );
		}
		return $charge;
	}

	protected function isCapture(){

		if( MainModel::getModuleVersion() >= SPModel::VERSION_PRO )
		{
			return (bool)$this->config->get( 'sp_charge' );	
		}
		/*if( defined( 'PRO_MOD' ) && PRO_MOD )
		{
			return (bool)$this->config->get( 'sp_charge' );
		}*/
		return true;
	}
}
?>