<?php
class Mproducer extends CI_Model {
    public function __construct()
    {
            parent::__construct();
            $this->table = $this->db->dbprefix('producer');
    }
  
    public function producer_id($link)
    {
        $this->db->where('link', $link);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['id'];
    }

    public function producer_name($id)
    {
        $this->db->where('id', $id);
        $this->db->where('status', 1);
        $this->db->where('trash', 1);
        $this->db->limit(1);
        $query = $this->db->get($this->table);
        $row=$query->row_array();
        return $row['name'];
    }


    
  
  
}