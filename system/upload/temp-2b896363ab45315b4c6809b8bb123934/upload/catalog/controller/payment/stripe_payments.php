<?php
/**
*@version Opencart v2.0.1.1
*/
if( ! defined( 'OWNER' ) )
	define( 'OWNER' , 'Customer' );
class ControllerPaymentStripePayments extends SPController {

	public function __construct( $registry ){
		parent::__construct( $registry );
	}

	public function index() {
		$this->language->load('payment/stripe_payments');

		$data['text_credit_card'] = $this->language->get('text_credit_card');
		$data['text_wait'] = $this->language->get('text_wait');

		$data['entry_cc_owner'] = $this->language->get('entry_cc_owner');
		$data['entry_cc_number'] = $this->language->get('entry_cc_number');
		$data['entry_cc_expire_date'] = $this->language->get('entry_cc_expire_date');
		$data['entry_cc_cvv2'] = $this->language->get('entry_cc_cvv2');
		$data['error_error'] = $this->language->get('error_error');
		$data['text_success_payment'] = $this->language->get('text_success_payment');

		$data['button_confirm'] = $this->language->get('button_confirm');
		$data['button_back'] = $this->language->get('button_back');
        
        $data['sp_public_key'] = $this->getPublicApiKey();

		$data['months'] = array();

		$now = new dateTime( '2000-01-01' );
		for( $i = $now->format( 'n' ) , $interval = new DateInterval( 'P1M' ); $i <= 12 ; $i++ , $now->add( $interval ) ){
			$data['months'][] = array(
				'text'  => $now->format( 'm' ), 
				'value' => $now->format( 'm' ),
			);
		}

		$data['year_expire'] = array();

		$now = new dateTime;
		for( $i = $now->format( 'y' ) , $interval = new DateInterval( 'P1Y' ) , $stop = $i + 10 ; $i <= $stop ; $i++ , $now->add( $interval ) ){
			$data['year_expire'][] = array(
				'text'  => $now->format( 'y' ),
				'value' => $now->format( 'y' ),
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/stripe_payments.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/stripe_payments.tpl';
		} else {
			$this->template = 'default/template/payment/stripe_payments.tpl';
		}	

		return $this->load->view( $this->template , $data );	
	}

	public function send() {
		$json = array();

		if( empty( $this->request->post[ 'token' ] ) )
		{
			$json[ 'error' ] = 'Missing token';
			$this->response->setOutput( json_encode( $json ) );
			return;
		}

		if( empty( $this->session->data[ 'order_id' ] ) )
		{
			$json[ 'error' ] = 'Missing order ID';
			$this->response->setOutput( json_encode( $json ) );
			return;
		}

		$this->load->model('checkout/order');
		$this->language->load( 'payment/stripe_payments' );
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		if( $this->currency->convert( $order_info[ 'total' ] , $order_info[ 'currency_code' ] , $this->config->get( 'sp_total_currency' ) ) < (float)$this->config->get( 'sp_total' ) )
		{
			$json[ 'error' ] = $this->language->get( 'error_min_total' );
			$this->response->setOutput( json_encode( $json ) );
			return;
		}
        
        $amount = $this->currencyToMin( $order_info[ 'total' ] , $order_info[ 'currency_code' ] );

        $customer = $this->createCustomer( array(
            'email'			=> $order_info['email'],
            'source' 		=> $this->request->post[ 'token' ],
            'description'	=> $order_info[ 'payment_firstname'] . ' ' . $order_info[ 'payment_lastname' ],
            'metadata'		=> array( 'customer_id'	=> $this->customer->getId() , ),
        ));

        if( isset( $customer->error ) )
        {
        	$json[ 'error' ] = $customer->error;
			$this->response->setOutput( json_encode( $json ) );
			return;
        }

        if( empty( $customer->id ) )
        {
        	$json[ 'error' ] = 'Unable to create customer';
			$this->response->setOutput( json_encode( $json ) );
			return;
        }

        if( file_exists( $this->sanitizePath( dirname( __FILE__ ) . 'stripe_payments_pro.php' ) ) )
        {
        	include $this->sanitizePath( dirname( __FILE__ ) . 'stripe_payments_pro.php' );
        }
        $charge = $this->createCharge( array(
            'customer'		=> $customer->id,
            'amount'		=> $amount,
            'currency'		=> $order_info['currency_code'],
            //'source'		=> $this->request->post[ 'token' ],
            'capture'		=> $this->isCapture(),
            'receipt_email'	=> $order_info[ 'email' ],
            'metadata'		=> array(
                'order_id'  	=> $this->session->data['order_id'],
                'customer'  	=> $order_info['payment_firstname']. ' ' .$order_info['payment_lastname'],
                'email'     	=> $order_info['email'],
                'phone'     	=> $order_info['telephone']
            ),
            'description'	=> 'Order ID# '. $this->session->data['order_id']
        ));
        if( isset( $charge->error ) )
        {
        	$json[ 'error' ] = $charge->error;
			$this->response->setOutput( json_encode( $json ) );
			return;
        }
        else
        {
        	$status = $this->isCapture() ? $this->config->get( 'sp_captured_status_id' ) : $this->config->get( 'sp_new_status_id' );
			$this->model_checkout_order->addOrderHistory( $this->session->data['order_id'] , $status );

			$this->model_payment_stripe_payments->addOrder( array(
				'order_id'			=> $order_info[ 'order_id' ],
				'charge_ref'		=> $charge->id,
				'captire_status'	=> $charge->captured,
				'description'		=> $charge->description,
				'total'				=> $order_info[ 'total' ],
				'currency_code'		=> $charge->currency,
			) );

			$this->debugLog->write( "Order #" . $order_info[ 'order_id' ] . " confirmed" );
        }

		$json['success'] = $this->url->link('checkout/success', '', 'SSL');
		$this->response->setOutput( json_encode( $json ) );
	}
}
?>