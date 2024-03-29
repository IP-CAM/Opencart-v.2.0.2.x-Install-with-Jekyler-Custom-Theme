<?php
class ModelPaymentStripePayments extends SPModel{

	public function createOrderTable(){
		$this->db->query( "CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "sp_order (
				sp_order_id INT(11) UNSIGNED AUTO_INCREMENT,
				order_id INT(11) UNSIGNED,
				charge_ref VARCHAR(255),
				date_added DATETIME,
				date_modified TIMESTAMP,
				capture_status TINYINT(1),
				description VARCHAR(255),
				total INT(11),
				currency_code VARCHAR(3),
				PRIMARY KEY(sp_order_id),
				INDEX(charge_ref,order_id))
				ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin");
	}

	public function deleteOrderTable(){
		$this->db->query( "DROP TABLE IF EXISTS " . DB_PREFIX . "sp_order" );
	}

	public function createTransactionTable(){
		$this->db->query( "CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "sp_transaction (
				transaction_id INT(11) UNSIGNED AUTO_INCREMENT,
				transaction_ref VARCHAR(255),
				`type` VARCHAR(255),
				date_added TIMESTAMP,
				amount INT(11),
				description VARCHAR(255),
				initiator VARCHAR(70),
				customer_ref VARCHAR(255),
				source_ref VARCHAR(255),
				plan_ref VARCHAR(255),
				subscription_ref VARCHAR(255),
				charge_ref VARCHAR(255),
				invoice_ref VARCHAR(255),
				refund_ref VARCHAR(255),
				event_ref VARCHAR(255),
				`status` VARCHAR(255),
				PRIMARY KEY(transaction_id))
				ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin");
	}

	public function deleteTransactionTable(){
		$this->db->query( "DROP TABLE IF EXISTS " . DB_PREFIX . "sp_transaction" );
	}

	public function createPlanTable(){
		$this->db->query( "CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "sp_plan (
				plan_id INT(11) UNSIGNED AUTO_INCREMENT,
				plan_ref VARCHAR(255),
				sp_plan_id VARCHAR(255),
				date_added TIMESTAMP,
				amount INT(11),
				currency VARCHAR(3),
				`interval` VARCHAR(50),
				interval_count TINYINT(3),
				`name` VARCHAR(255),
				PRIMARY KEY(plan_id))
				ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin");
	}

	public function deletePlanTable(){
		$this->db->query( "DROP TABLE IF EXISTS " . DB_PREFIX . "sp_plan" );
	}
}