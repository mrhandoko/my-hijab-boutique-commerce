<?php
class ModelShippingPosreg extends Model {
	function getQuote($address) {
		$this->load->language('shipping/posreg');

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('posreg_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

		if (!$this->config->get('posreg_geo_zone_id')) {
			$status = true;
		} elseif ($query->num_rows) {
			$status = true;
		} else {
			$status = false;
		}

		$method_data = array();

		if ($status) {		
			$posreg_cost = 0;
			$weight = $this->cart->getWeight();
			
			$rates = preg_split('/\r\n/', $this->config->get('posreg_cost'));
			
			foreach ($rates as $rate) {
				$items = explode(',', $rate);
				if ($address['city'] == $items[0]) {
						{
						$hitung = number_format($weight, 2, '.', ',');
						$berat = substr($hitung, 0, -2);
						$desimal = $weight - $berat;
						if ($weight <= 1.0){
							$posreg_cost = $items[2];
						}elseif($desimal < 0.2){
							$posreg_cost = $berat*$items[2];
						}else{
							$posreg_cost = ($berat+1)* $items[2];
						}
                                           
						break;
					}                                       
					}
			}
		
			$quote_data = array();
			if($posreg_cost == 0){ 
			$quote_data['posreg'] = array(
				'code'           => 'posreg.posreg',
				'title'        => $this->language->get('text_shipping_not_available'),
				'cost'         => $posreg_cost,
				'tax_class_id' => $this->config->get('posreg_tax_class_id'),
				'text'         => $this->language->get('text_cost_zero')
			);

			$method_data = array(
				'code'         => 'posreg',
				'title'      => $this->language->get('text_title'),
				'quote'      => $quote_data,
				'sort_order' => $this->config->get('posreg_sort_order'),
				'error'      => false
			);
			}else{ 
			$quote_data['posreg'] = array(
				'code'         => 'posreg.posreg',
				'title'        => $this->language->get('text_description'),
				'cost'         => $posreg_cost,
				'tax_class_id' => $this->config->get('posreg_tax_class_id'),
				'text'         => $this->currency->format($this->tax->calculate($posreg_cost, $this->config->get('posreg_tax_class_id'), $this->config->get('config_tax')))
			);
			$method_data = array(
        		'code'         => 'posreg',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('posreg_sort_order'),
        		'error'      => FALSE
      		);
		}
	}

		return $method_data;
	}
}