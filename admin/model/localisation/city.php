<?php
class ModelLocalisationCity extends Model {

	public function addCity($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "city SET status = '" . (int)$data['status'] . "', name = '" . $this->db->escape($data['name']) . "', code = '" . $this->db->escape($data['code']) . "', zone_id = '" . (int)$data['zone_id'] . "'");
			
		$this->cache->delete('city');
	}

	public function editCity($city, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "city SET status = '" . (int)$data['status'] . "', name = '" . $this->db->escape($data['name']) . "', code = '" . $this->db->escape($data['code']) . "', zone_id = '" . (int)$data['zone_id'] . "' WHERE city = '" . (int)$city . "'");

		$this->cache->delete('city');
	}

	public function deleteCity($city) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "city WHERE city = '" . (int)$city . "'");

		$this->cache->delete('city');	
	}

	public function getCity($city) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "v_city WHERE city = '" . (int)$city . "'");
		
		return $query->row;
	}

	public function getCities($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "v_city";

		$implode = array();
		
		if (isset($data['filter_zone']) && !is_null($data['filter_zone'])) {
			$implode[] = "city_zone LIKE '%" . $this->db->escape($data['filter_zone']) . "%'";
		}

		if (isset($data['filter_city']) && !is_null($data['filter_city'])) {
			$implode[] = "city_name LIKE '%" . $this->db->escape($data['filter_city']) . "%'";
		}

		if (isset($data['filter_code']) && !is_null($data['filter_code'])) {
			$implode[] = "city_code LIKE '%" . $this->db->escape($data['filter_code']) . "%'";
		}

		if (isset($data['filter_country_id']) && !is_null($data['filter_country_id'])) {
			$implode[] = "city_country_id = '" . $this->db->escape($data['filter_country_id']) . "'";
		}
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$implode[] = "city_status = '" . (int)$data['filter_status'] . "'";
		}	
				
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
		
		$sort_data = array(
			'city_zone',
			'city',
			'city_name',
			'city_code',
			'city_country',
			'city_status'
		);	
			
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY city_zone";	
		}
			
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}		
		
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}

	public function getCityByZoneId($zone_id) {
		$city_data = $this->cache->get('city.' . (int)$zone_id);
	
		if (!$city_data) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "city WHERE zone_id = '" . (int)$zone_id . "' AND status = '1' ORDER BY name");
	
			$city_data = $query->rows;
			
			$this->cache->set('city.' . (int)$zone_id, $city_data);
		}
	
		return $city_data;
	}

	public function getTotalCities($data = array()) {
      	$sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "v_city";
		
		$implode = array();

		if (isset($data['filter_zone']) && !is_null($data['filter_zone'])) {
			$implode[] = "city_zone LIKE '%" . $this->db->escape($data['filter_zone']) . "%'";
		}

		if (isset($data['filter_city']) && !is_null($data['filter_city'])) {
			$implode[] = "city_name LIKE '%" . $this->db->escape($data['filter_city']) . "%'";
		}

		if (isset($data['filter_code']) && !is_null($data['filter_code'])) {
			$implode[] = "city_code LIKE '%" . $this->db->escape($data['filter_code']) . "%'";
		}

		if (isset($data['filter_country_id']) && !is_null($data['filter_country_id'])) {
			$implode[] = "city_country_id = '" . $this->db->escape($data['filter_country_id']) . "'";
		}
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$implode[] = "city_status = '" . (int)$data['filter_status'] . "'";
		}
		
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
				
		$query = $this->db->query($sql);
				
		return $query->row['total'];
	}

	public function getTotalCitiesByZoneId($zone_id) {
		$query = $this->db->query("SELECT count(*) AS total FROM " . DB_PREFIX . "city WHERE zone_id = '" . (int)$zone_id . "'");
	
		return $query->row['total'];
	}

}