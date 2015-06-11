<?php
/**
* @version Opencart v 2.0.1.1
*/
if( ! defined( 'OWNER' ) )
	define( 'OWNER' , 'Admin' );

class ControllerPaymentStripePayments extends SPController {

	public function __construct( $registry ){
		parent::__construct( $registry );
	}

	public function index() {

		$this->language->load('payment/stripe_payments');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$setting = $this->model_setting_setting->getSetting( 'sp' );
			$this->merge( $setting , $this->request->post , true );
			$setting[ 'sp_total_currency' ] = $this->currency->getCode();
			$this->model_setting_setting->editSetting('sp', $setting );
			//for sort order and status
			$this->model_setting_setting->editSetting('stripe_payments', $setting );			

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data[ 'tab_api' ] = $this->language->get( 'tab_api' );
		$data[ 'tab_general' ] = $this->language->get( 'tab_general' );
		$data[ 'tab_status' ] = $this->language->get( 'tab_status' );

		$data[ 'text_enabled' ] = $this->language->get('text_enabled');
		$data[ 'text_disabled' ] = $this->language->get('text_disabled');
		$data[ 'text_all_zones' ] = $this->language->get('text_all_zones');
		$data[ 'text_test' ] = $this->language->get('text_test');
		$data[ 'text_live' ] = $this->language->get('text_live');
		$data[ 'text_authorization' ] = $this->language->get('text_authorization');
		$data[ 'text_charge' ] = $this->language->get('text_charge');
		$data[ 'text_test_mode' ] = $this->language->get('text_test_mode');	
		$data[ 'text_debug_mode' ] = $this->language->get('text_debug_mode');	
		$data[ 'text_yes' ] = $this->language->get('text_yes');
		$data[ 'text_no' ] = $this->language->get('text_no');
		$data[ 'text_default_payment_mode' ] = $this->language->get( 'text_default_payment_mode' );
		$data[ 'text_one_step_mode' ] = $this->language->get( 'text_one_step_mode' );
		$data[ 'text_two_step_mode' ] = $this->language->get( 'text_two_step_mode' );
		$data[ 'text_wait_page_load' ] = $this->language->get( 'text_wait_page_load' );
		$data[ 'text_form' ] = $this->language->get( 'text_form' );

		$data[ 'entry_test_secret_key' ] = $this->language->get('entry_test_secret_key');
		$data[ 'entry_test_public_key' ] = $this->language->get('entry_test_public_key');
		$data[ 'entry_live_secret_key' ] = $this->language->get('entry_live_secret_key');
		$data[ 'entry_live_public_key' ] = $this->language->get('entry_live_public_key');
		$data[ 'entry_mode' ] = $this->language->get('entry_mode');
		$data[ 'entry_method' ] = $this->language->get('entry_method');
		$data[ 'entry_total' ] = $this->language->get('entry_total');
		$data[ 'entry_order_status' ] = $this->language->get('entry_order_status');		
		$data[ 'entry_geo_zone' ] = $this->language->get('entry_geo_zone');
		$data[ 'entry_status' ] = $this->language->get('entry_status');
		$data[ 'entry_sort_order' ] = $this->language->get('entry_sort_order');
		$data[ 'entry_ipn' ] = $this->language->get('entry_ipn');
		$data[ 'entry_captured_status' ] = $this->language->get( 'entry_captured_status' );
		$data[ 'entry_completed_status' ] = $this->language->get( 'entry_completed_status' );
		$data[ 'entry_status_check_falue_status' ] = $this->language->get( 'entry_status_check_falue_status' );
		$data[ 'entry_zip_check_falue_status' ] = $this->language->get( 'entry_zip_check_falue_status' );
		$data[ 'entry_cvc_check_falue_status' ] = $this->language->get( 'entry_cvc_check_falue_status' );
		$data[ 'entry_fully_refunded_status' ] = $this->language->get( 'entry_fully_refunded_status' );
		$data[ 'entry_partially_refunded_status' ] = $this->language->get( 'entry_partially_refunded_status' );
		$data[ 'entry_new_status' ] = $this->language->get( 'entry_new_status' );
		$data[ 'entry_title' ] = $this->language->get( 'entry_title' );

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		$data[ 'help_title' ] = $this->language->get( 'help_title' );
		$data[ 'help_total' ] = sprintf( $this->language->get( 'help_total' ) , $this->currency->format( MIN_TOTAL ) );
		$data[ 'help_charge' ] = $this->language->get( 'help_charge' );

		foreach( $this->error as $key => $val ){
			if( is_array( $val ) )
			{
				$data[ 'error_' . $key ] = implode( '<br>' , $val );
			}
			else
			{
				$data[ 'error_' . $key ] = $val;
			}
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('payment/stripe_payments', 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data['action'] = $this->url->link( 'payment/stripe_payments' , 'token=' . $this->session->data['token'] , 'SSL' );
		$data['cancel'] = $this->url->link( 'extension/payment' , 'token=' . $this->session->data['token'] , 'SSL' );

		$data[ 'sp_test_public_key' ] = $this->fillSetting( 'sp_test_public_key' );
		$data[ 'sp_test_secret_key' ] = $this->fillSetting( 'sp_test_secret_key' );
		$data[ 'sp_live_public_key' ] = $this->fillSetting( 'sp_live_public_key' );
		$data[ 'sp_live_secret_key' ] = $this->fillSetting( 'sp_live_secret_key' );
		$data[ 'sp_mode' ] = $this->fillSetting( 'sp_stripe_payments_mode' );
		$data[ 'sp_method' ] = $this->fillSetting( 'sp__method' );
		$data[ 'sp_order_status_id' ] = $this->fillSetting( 'sp_order_status_id' );
		$data[ 'sp_ipn_route' ] = HTTPS_SERVER . 'index.php?route=payment/stripe_payments/ipn';
		$data[ 'stripe_payments_debug' ] = $this->fillSetting( 'stripe_payments_debug' );
		$data[ 'sp_test_mode' ] = $this->fillSetting( 'sp_test_mode' );
		$data[ 'sp_captured_status_id' ] = $this->fillSetting( 'sp_captured_status_id' );
		$data[ 'sp_completed_status_id' ] = $this->fillSetting( 'sp_completed_status_id' );
		$data[ 'sp_check_falue_status_id' ] = $this->fillSetting( 'sp_check_falue_status_id' );
		$data[ 'sp_zip_check_falue_status_id' ] = $this->fillSetting( 'sp_zip_check_falue_status_id' );
		$data[ 'sp_cvc_check_status_id' ] = $this->fillSetting( 'sp_cvc_check_status_id' );
		$data[ 'sp_fully_refunded_status_id' ] = $this->fillSetting( 'sp_fully_refunded_status_id' );
		$data[ 'sp_refunded_status_id' ] = $this->fillSetting( 'sp_refunded_status_id' );
		$data[ 'sp_new_status_id' ] = $this->fillSetting( 'sp_new_status_id' );
		$data[ 'sp_title' ] = $this->fillSetting( 'sp_title' , $this->language->get( 'text_title' ) );

		$this->load->model('localisation/order_status');

		$data[ 'order_statuses' ] = $this->model_localisation_order_status->getOrderStatuses();
		$data[ 'stripe_payments_geo_zone_id' ] = $this->fillSetting('stripe_payments_geo_zone_id');
		$data[ 'currency_symbol_left' ] = $this->currency->getSymbolLeft();
		$data[ 'currency_symbol_right' ] = $this->currency->getSymbolRight();

		$this->load->model('localisation/geo_zone');
		$data[ 'geo_zones' ] = $this->model_localisation_geo_zone->getGeoZones();

		$data[ 'stripe_payments_status'] = $this->fillSetting('stripe_payments_status');
		$data[ 'sp_total'] = $this->fillSetting('sp_total');
		$data[ 'stripe_payments_sort_order'] = $this->fillSetting('stripe_payments_sort_order');
		$data[ 'sp_charge' ] = $this->fillSetting( 'sp_charge' , 1 );
		$data[ 'sp_geo_zone_id' ] = $this->fillSetting( 'sp_geo_zone_id' );

		$data[ 'header' ] = $this->load->controller( 'common/header' );
		$data[ 'footer' ] = $this->load->controller( 'common/footer' );	
		$this->response->setOutput( $this->load->view( 'payment/stripe_payments.tpl' , $data ) );
	}

	protected function validate() {
		if( ! $this->user->hasPermission( 'modify', 'payment/stripe_payments' ) )
		{
			$this->error[ 'warning' ] = $this->language->get( 'error_permission' );
		}

		if( $this->request->post[ 'sp_test_mode' ] )
		{
			if( empty( $this->request->post[ 'sp_test_secret_key' ] ) )
			{
				$this->error['test_secret_key'] = $this->language->get('error_test_secret_key');
			}
			if( empty( $this->request->post[ 'sp_test_public_key' ] ) )
			{
				$this->error['test_public_key'] = $this->language->get('error_test_public_key');
			}
		}
		else
		{
			if( empty( $this->request->post[ 'sp_live_secret_key' ] ) )
			{
				$this->error['live_secret_key'] = $this->language->get('error_live_secret_key');
			}
			if( empty( $this->request->post[ 'sp_live_public_key' ] ) )
			{
				$this->error['live_public_key'] = $this->language->get('error_live_public_key');
			}
		}
		
		if( ! isset( $this->request->post[ 'sp_total' ] ) || (float)$this->request->post[ 'sp_total' ] < (float)MIN_TOTAL )
		{
			$this->error[ 'total' ] = sprintf( $this->language->get( 'error_total' ) , $this->currency->format( MIN_TOTAL ) );
		}

		if ( $this->isEmptyArray( $this->error ) )
		{
			return true;
		}

		if( ! empty( $this->error[ 'warning' ] ) )
		{
			if( is_array( $this->error[ 'warning' ] ) )
			{
				$this->error[ 'warning' ][] = $this->language->get( 'error_correct_data' );
			}
			else
			{
				$this->error[ 'warning' ] = array( $this->error[ 'warning' ] , $this->language->get( 'error_correct_data' ) , );
			}
		}
		else
		{
			$this->error[ 'warning' ] = $this->language->get( 'error_correct_data' );
		}
		return false;
	}

	public function install(){
		$this->load->model( 'payment/stripe_payments' );
		$this->model_payment_stripe_payments->createOrderTable();
		$this->model_payment_stripe_payments->createTransactionTable();
		$this->model_payment_stripe_payments->createPlanTable();
	}

	public function uninstall(){
		if( $this->config->get( 'sp_uninstall_table' ) )
		{
			$this->load->model( 'payment/stripe_payments' );
			$this->model_payment_stripe_payments->deleteOrderTable();
			$this->model_payment_stripe_payments->deleteTransactionTable();
			$this->model_payment_stripe_payments->deletePlanTable();
		}
		if( $this->config->get( 'sp_uninstall_setting' ) )
		{
			$this->load->model( 'setting/setting' );
			$this->setting_setting->deleteSetting( 'sp' );
		}
	}

	public function orderAction(){
		if( defined( 'PRO_MOD' ) && PRO_MOD && isset( $this->request->get[ 'order_id' ] ) && ( $charge = $this->fetchCharge( $this->request->get[ 'order_id' ] ) ) )
		{
			$this->language->load( 'payment/stripe_payments' );
			$this->load->model( 'payment/stripe_payments' );

			$data[ 'text_stripe_header' ] = $this->language->get( 'text_stripe_header' );
			$data[ 'text_charge_id' ] = $this->language->get( 'text_charge_id' );
			$data[ 'text_amount' ] = $this->language->get( 'text_amount' );
			$data[ 'text_capture' ] = $this->language->get( 'text_capture' );
			$data[ 'text_capturing' ] = $this->language->get( 'text_capturing' );
			$data[ 'text_refund' ] = $this->language->get( 'text_refund' );
			$data[ 'text_captured' ] = $this->language->get( 'text_captured' );
			$data[ 'text_processing' ] = $this->language->get( 'text_processing' );
			$data[ 'text_transaction' ] = $this->language->get( 'text_transaction' );
			$data[ 'text_date' ] = $this->language->get( 'text_date' );
			$data[ 'text_type' ] = $this->language->get( 'text_type' );
			$data[ 'text_amount' ] = $this->language->get( 'text_amount' );
			$data[ 'text_description' ] = $this->language->get( 'text_description' );
			$data[ 'text_initiator' ] = $this->language->get( 'text_initiator' );
			$data[ 'text_status' ] = $this->language->get( 'text_status' );
			$data[ 'text_amount_refunded' ] = $this->language->get( 'text_amount_refunded' );
			$data[ 'text_refunded' ] = $this->language->get( 'text_refunded' );
			$data[ 'text_charge_refunded' ] = $this->language->get( 'text_charge_refunded' );

			$data[ 'error_error' ] = $this->language->get( 'error_error' );

			$data[ 'charge' ] = $charge;
			$data[ 'amount' ] = $this->currency->format( $this->minToCurrency( $charge->amount , $charge->currency ) , $charge->currency );
			$data[ 'amount_refunded' ] = $this->currency->format( $this->minToCurrency( $charge->amount_refunded , $charge->currency ) , $charge->currency );
			$data[ 'non_formatted_amount' ] = $this->minToCurrency( $charge->amount , $charge->currency );
			$data[ 'non_formatted_amount_refunded' ] = $this->minToCurrency( $charge->amount_refunded , $charge->currency );
			$data[ 'order_id' ] = $this->request->get[ 'order_id' ];
			$data[ 'txn' ] = $this->model_payment_stripe_payments->getTransactions( array( 'charge_ref' => $charge->id ) );
			$data[ 'url_capture' ] = HTTPS_SERVER .  'index.php?route=payment/stripe_payments/jsonCapture&token=' . $this->session->data['token'] . '&order_id=' . $this->request->get[ 'order_id' ];
			$data[ 'url_refund' ] = HTTPS_SERVER .  'index.php?route=payment/stripe_payments/jsonRefund&token=' . $this->session->data['token'] . '&order_id=' . $this->request->get[ 'order_id' ];

			return $this->load->view( 'payment/stripe_payments_order.tpl' , $data );
		}
	}
}
?>