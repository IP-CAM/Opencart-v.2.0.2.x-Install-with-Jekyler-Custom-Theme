<?php
/**
* @version Opencart v 2.0.1.1
*/
class ModelPaymentStripePayments extends SPModel {

	public function getMethod($address, $total) {

		$this->language->load('payment/stripe_payments');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('sp_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if( $this->config->get( 'sp_total' ) > 0 && $this->config->get( 'sp_total' ) > $total )
		{
			$status = false;
		}
		elseif( ! $this->config->get( 'sp_geo_zone_id' ) )
		{
			$status = true;
		}
		elseif( $query->num_rows )
		{
			$status = true;
		}
		else
		{
			$status = false;
		}	

		$method_data = array();

		if( $status )
		{  
			$method_data = array(
				'code'			=> 'stripe_payments',
				'title'			=> $this->config->has( 'sp_title' ) ? $this->config->get( 'sp_title' ) : $this->language->get('text_title'),
				'sort_order'	=> $this->config->get('stripe_payments_sort_order'),
				'terms'			=> '',
			);
		}

		return $method_data;
	}

	public function recurringPayments() {

		if( MainModel::getModuleVersion() == SPModel::VERSION_PRO )
		{
			return true;
		}
		return false;
		/*if( defined( 'PRO_MODE' ) )
		{
			return PRO_MODE;
		}
		return false;*/
    }
}
?>