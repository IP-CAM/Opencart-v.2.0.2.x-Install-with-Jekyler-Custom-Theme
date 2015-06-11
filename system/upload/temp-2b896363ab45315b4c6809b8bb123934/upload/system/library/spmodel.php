<?php
class SPModel extends MainModel{

	/**
	* Module version constants
	* @var integer
	*/
	const VERSION_LIGHT		= 10;
	const VERSION_PRO		= 20;
	const VERSION_ADVANCED	= 30;

	/**
	* Current module version
	* @var integer
	*/
	static protected $_module_version = self::VERSION_LIGHT;
	
	public function addOrder( $data ){
		if( empty( $data[ 'order_id' ] ) )
		{
			$this->debugLod->throwError( __METHOD__ . ' : order ID missing' );
			return false;
		}
		if( empty( $data[ 'charge_ref'] ) )
		{
			$this->debugLog->throwError( __METHOD__ . ' : charge refference missing' );
			return false;
		}

		$data[ 'capture_status' ] = isset( $data[ 'capture_status' ] ) ? $data[ 'capture_status' ] : '';
		$data[ 'description' ] = isset( $data[ 'description' ] ) ? $data[ 'description' ] : '';
		$data[ 'total' ] = isset( $data[ 'total' ] ) ? $data[ 'total' ] : '';
		$data[ 'currency_code' ] = isset( $data[ 'currency_code' ] ) ? $data[ 'currency_code' ] : '';

		$this->debugLog->write( __METHOD__ . ' : Order data to record' , $data );
		$this->db->query( "INSERT INTO " . DB_PREFIX . "sp_order SET order_id = " . (int)$data[ 'order_id' ] . ", charge_ref = '" . $this->db->escape( $data[ 'charge_ref' ] ) . "', date_added = NOW(), capture_status = " . (int)$data[ 'capture_status' ] . ", description  = '" . $this->db->escape( $data[ 'description' ] ) . "', total = '" . (float) $data[ 'total' ] . "', currency_code = '" . $this->db->escape( $data[ 'currency_code' ] ) . "'" );
		if( $this->db->countAffected() )
		{
			$this->debugLog->write( "Order #{$this->db->getLastId()} added to DB" );
			return $this->db->getLastId();
		}
		$this->debugLog->throwError( __METHOD__ . ' : Error while adding order to DB' );
		return false;
	}

	public function getOrder( $order_id ){
		$this->debugLog->write( __METHOD__ . "Fetching order with order_id #$order_id" );
		$order = $this->db->query( "SELECT * FROM " . DB_PREFIX . "sp_order WHERE order_id = '" . (int)$order_id . "'" );
		if( $order->num_rows )
		{
			$this->debugLog->write( "Order #{$order_id} fetched" , $order->row );
			return $order->row;
		}
		$this->debugLog->throwError( "Order with order_id #'$order_id' not found" );
		return null;
	}

	public function getOrderByCharge( $charge_ref ){
		$this->debugLog->write( __METHOD__ . "Fetching order with charge referense #$charge_ref" );
		$order = $this->db->query( "SELECT * FROM " . DB_PREFIX . "sp_order WHERE charge_ref = '" . $this->db->escape( $charge_ref ) . "'" );
		if( $order->num_rows )
		{
			$this->debugLog->write( "Order for charge #{$charge_ref} is fetched" , $order->row );
			return $order->row;
		}
		$this->debugLog->throwError( "Order with charge referense #'$charge_ref' not found" );
		return null;
	}

	public function addTransaction( $data ){
		$info = array(
			'transaction_ref'	=> isset( $data[ 'transaction_ref' ] ) ? $data[ 'transaction_ref' ] : '',
			'type'				=> isset( $data[ 'type' ] ) ? $data[ 'type' ] : '',
			'amount'			=> isset( $data[ 'amount' ] ) ? $data[ 'amount' ] : 0,
			'description'		=> isset( $data[ 'description' ] ) ? $data[ 'description' ] : '',
			'initiator'			=> OWNER, 
			'customer_ref'		=> isset( $data[ 'customer_ref' ] ) ? $data[ 'customer_ref' ] : '',
			'source_ref'		=> isset( $data[ 'source_ref' ] ) ? $data['source_ref' ] : '',
			'plan_ref'			=> isset( $data[ 'plan_ref' ] ) ? $data[ 'plan_ref' ] : '',
			'subscription_ref'	=> isset( $data[ 'subscription_ref' ] ) ? $data[ 'subscription_ref' ] : '',
			'charge_ref'		=> isset( $data[ 'charge_ref' ] ) ? $data[ 'charge_ref' ] : '',
			'invoice_ref'		=> isset( $data[ 'invoice_ref' ] ) ? $data[ 'invoice_ref' ] : '',
			'refund_ref'		=> isset( $data[ 'refund_ref' ] ) ? $data[ 'refund_ref' ] : '',
			'event_ref'			=> isset( $data[ 'refund_ref' ] ) ? $data[ 'refund_ref' ] : '',
			'status'			=> isset( $data[ 'status' ] ) ? $data[ 'status' ] : '',
		);
		$this->debugLog->write( "Record transaction" , $info );
		$this->db->query( "INSERT INTO " . DB_PREFIX . "sp_transaction SET transaction_ref = '" . $this->db->escape( $info[ 'transaction_ref' ] ) . "', amount = " . (float)$info[ 'amount' ] . ", description = '" . $this->db->escape( $info[ 'description' ] ) . "', initiator = '" . $info[ 'initiator' ] . "', customer_ref = '" . $this->db->escape( $info[ 'customer_ref' ] ) . "', source_ref = '" . $this->db->escape( $info[ 'source_ref' ] ) . "', plan_ref = '" . $this->db->escape( $info[ 'plan_ref' ] ) . "', subscription_ref = '"  . $this->db->escape( $info[ 'subscription_ref' ] ) . "', charge_ref = '" . $this->db->escape( $info[ 'charge_ref' ] ) . "', refund_ref = '" . $this->db->escape( $info[ 'refund_ref' ] ) . "', event_ref = '" . $this->db->escape( $info[ 'event_ref' ] ) . "', `type` = '" . $data[ 'type' ] . "', `status` = '" . $this->db->escape( $info[ 'status' ] ) . "', invoice_ref = '" . $this->db->escape( $info[ 'invoice_ref' ] ) . "'" );
		if( $this->db->countAffected() )
		{
			$this->debugLog->write( "Transaction #{$this->db->getLastId()} added to DB" );
			return $this->db->getLastId();
		}
		$this->debugLog->throwError( "Error while adding transaction" );
		return false;
	}

	public function getTransactions( $data ){
		$q = "SELECT * FROM " . DB_PREFIX . "sp_transaction";
		$qa = array();
		if( ! empty( $data[ 'transaction_ref' ] ) )
			$qa[] = "transaction_ref='" . $this->db->escape( $data[ 'transaction_ref' ] ) . "'";
		if( ! empty( $data[ 'customer_ref' ] ) )
			$qa[] = "customer_ref='" . $this->db->escape( $data[ 'customer_ref' ] ) . "'";
		if( ! empty( $data[ 'source_ref' ] ) )
			$qa[] = "source_ref='" . $this->db->escape( $data[ 'source_ref' ] ) . "'";
		if( ! empty( $data[ 'plan_ref' ] ) )
			$qa[] = "plan_ref='" . $this->db->escape( $data[ 'plan_ref' ] ) . "'";
		if( ! empty( $data[ 'subscription_ref' ] ) )
			$qa[] = "subscription_ref='" . $this->db->escape( $data[ 'subscription_ref' ] ) . "'";
		if( ! empty( $data[ 'charge_ref' ] ) )
			$qa[] = "charge_ref='" . $this->db->escape( $data[ 'charge_ref' ] ) . "'";
		if( ! empty( $data[ 'refund_ref' ] ) )
			$qa[] = "refund_ref='" . $this->db->escape( $data[ 'refund_ref' ] ) . "'";
		if( ! empty( $data[ 'event_ref' ] ) )
			$qa[] = "event_ref='" . $this->db->escape( $data[ 'event_ref' ] ) . "'";
		if( ! empty( $data[ 'invoice_ref' ] ) )
			$qa[] = "invoice_ref='" . $this->db->escape( $data[ 'invoice_ref' ] ) . "'";
		if( ! empty( $data[ 'status' ] ) )
			$qa[] = "`status`='" . $this->db->escape( $data[ 'status' ] ) . "'";
		if( ! empty( $qa ) )
			$q .= ' WHERE ' . implode( ' AND ' , $qa );

		$this->debugLog->write( "Quering transactions with query $q" );

		$txn = $this->db->query( $q );

		$this->debugLog->write( 'Fetched ' . $txn->num_rows . ' transaction(s)' );
		
		if( $txn->num_rows )
			return $txn->rows;
		return null;
	}

	public function setPlan( Stripe_Plan $plan ){
		$plan = $this->db->query( "INSERT INTO " . DB_PREFIX . "sp_plan SET plan_ref = '" . $this->db->escape( $plan->id ) . "', sp_plan_id = '" . $this->db->escape( $plan->sp_id ) . "', amount = " . (int)$plan->amount . ", `interval` = '" . $this->db->escape( $plan->interval ) . "', interval_count = " . (int)$plan->interval_count . ", `name` = '" . $this->db->escape( $plan->name ) . "', currency = '" . $this->db->escape( strtolower( $plan->currency ) ) . "'" );
		if( $this->db->countAffected() )
		{
			$this->debugLog->write( 'Plan #' . $plan->sp_id . ' putted to DB' );
			return $this->db->getLastId();
		}
		$this->debugLog->throwError( __METHOD__ . ' can\'t add plan #' . $plan->sp_id . ' to DB' );
		return null;
	}

	public function getPlan( $data ){
		$info = array();
		$info[ 'plan_ref' ] = isset( $data[ 'plan_ref' ] ) ? $data[ 'paln_ref' ] : '';
		$info[ 'id' ] = isset( $data[ 'id' ] ) ? $data[ 'id' ] : '';
		$info[ 'amount' ] = isset( $data[ 'amount' ] ) ? $data[ 'amount' ] : '';
		$info[ 'currency' ] = isset( $data[ 'currency' ] ) ? $data[ 'currency' ] : '';
		$info[ 'interval' ] = isset( $data[ 'interval' ] ) ? $data[ 'interval' ] : '';
		$info[ 'interval_count' ] = isset( $data[ 'interval_count' ] ) ? $data[ 'interval_count' ] : '';
		$info[ 'name' ] = isset( $data[ 'name' ] ) ? $data[ 'name' ] : '';
		$plan = $this->db->query( "SELECT * FROM " . DB_PREFIX . "sp_plan WHERE `amount` = '" . (int)$info[ 'amount' ] . "' AND `currency` = '" . $this->db->escape( strtolower( $info[ 'currency' ] ) ) . "' AND `interval` = '" . $this->db->escape( $info[ 'interval' ] ) . "' AND interval_count = " . (int)$info[ 'interval_count' ] . " AND sp_plan_id  = '" . $this->db->escape( $info[ 'id' ] ) . "'" );
		if( $plan->num_rows )
		{
			$this->debugLog->write( 'Plan fetchet fom DB' , $plan->row );
			return $plan->row;
		}
		return null;
	}

	public function getPlanByCode( $planCode ){
		$plan = $this->db->query( "SELECT * FROM " . DB_PREFIX . "sp_plan WHERE sp_plan_id = '" . $this->db->escape( $planCode ) . "'" );
		if( $plan->num_rows )
		{
			$this->debugLog->write( "Plan $planCode exists in DB" );
			return $plan->row;
		}
		$this->debugLog->write( "Plan $planCode do not exists in DB" );
		return null;
	}

	public function getRecurringOrderInfoSP( $subscription_ref , $customer_ref ){
 
		$ch = curl_init( HTTPS_CATALOG . 'index.php?route=payment/stripe_payments/jsonFetchStripeSubscription' );

        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, array(
        	'subscription_ref'	=> $subscription_ref,
        	'customer_ref'		=> $customer_ref,
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $r = curl_exec( $ch );

        $this->debugLog->write( __METHOD__ . ' : curl response' , $r );

        try{ $response = unserialize( $r ); }
        catch( Exeption $e )
        {
        	$this->debugLog->throwError( $r );
        }

        if( $error = curl_error( $ch ) )
        {
        	$this->debugLog->throwError( 'CURL error while fetching recurring order info : ' . $error );
        	return null;
        }
        if( isset( $response[ 'error' ] ) )
        {
        	$this->debugLog->throwError( 'Error while fetching recurring order info : ' . $response[ 'error' ] );
        	return null;
        }
		return $response;
	}

	public function setEndDateSubscriptionSP( $customer_ref , $subscription_ref , $date ){

		$ch = curl_init( HTTPS_CATALOG . 'index.php?route=payment/stripe_payments/jsonChangeEndDateSubscription' );

        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, array(
        	'subscription_ref'	=> $subscription_ref,
        	'customer_ref'		=> $customer_ref,
        	'date'				=> $date,
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $r = curl_exec( $ch );

        $this->debugLog->write( __METHOD__ . ' : curl response' , $r );

        try{ $response = unserialize( $r ); }
        catch( Exeption $e )
        {
        	$this->debugLog->throwError( $r );
        }

        if( $error = curl_error( $ch ) )
        {
        	$this->debugLog->throwError( 'CURL error while updating subscription : ' . $error );
        	return null;
        }
        elseif( isset( $response[ 'error' ] ) )
        {
        	$this->debugLog->throwError( 'Error while updating subscription : ' . $response[ 'error' ] );
        	return null;
        }
		elseif( isset( $response[ 'success' ] ) )
		{
			return $response[ 'success' ];
		}
		return null;
	}

	public function getRecurringOrderBySubscriptionRef( $subscription_ref ){
		$order = $this->db->query( "SELECT * FROM " . DB_PREFIX . "erb_recurring_order WHERE profile_reference = '" . $this->db->escape( $subscription_ref ) . "'" );
		if( $order->num_rows )
		{
			//$this->debugLog->wrte( "Recurring order fetched by subscription refernse" , $order->row );
			return $order->row;
		}
		$this->debugLog->wrte( "Recurring order do not fetched by subscription refernse #$subscription_ref" );
		return null;
	}

	public function updateDateEnd( $recurring_order_id , $date ){
		$this->db->query( "UPDATE " . DB_PREFIX . "erb_recurring_order SET date_end = '" . $this->db->escape( $date ) . "' WHERE recurring_order_id = " . (int)$recurring_order_id );
		if( $this->db->countAffected() )
		{
			$this->debugLog->write( "Set end date of recurring order #$recurring_order_id to $date" );
			$this->load->model( 'module/easy_recurring_basket' );
			$this->model_module_easy_recurring_basket->addTransaction( 0 , 'Update order' , 0 , $recurring_order_id );
			return true;
		}
		$this->debugLog->write( "Can\'t set end date of recurring order #$recurring_order_id to $date" );
		return false;
	}
}
?>