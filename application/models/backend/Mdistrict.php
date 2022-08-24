<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mdistrict extends CI_Model {

	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('quanhuyen');
    }
    public function district_name($districtid)
    {
        $this->db->where('maqh', $districtid);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }

}