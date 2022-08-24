<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mprovince extends CI_Model {

	public function __construct()
    {
        parent::__construct();
        $this->table = $this->db->dbprefix('tinhthanhpho');
    }
    public function province_name($provinceid)
    {
        $this->db->where('matp', $provinceid);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }
}