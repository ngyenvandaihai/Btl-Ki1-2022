<?php
class Morders extends CI_Model {
        public function __construct()
        {
                parent::__construct();
                $this->table = $this->db->dbprefix('order');
        }

        public function orders_listorders($limit, $first)
        {
                $this->db->where('trash', 1);
                $this->db->order_by('orderdate', 'desc');
                $query = $this->db->get($this->table, $limit, $first);
                return $query->result_array();
        } 

        public function orders_detail($id)
        {
                $this->db->where('id',$id);
                $this->db->where('trash', 1);
                $query = $this->db->get($this->table);
                return $query->row_array();
        }

        public function orders_customerid($customerid)
        {
                $this->db->where('customerid',$customerid);
                $this->db->where('status', 1);
                $this->db->where('trash', 1);
                $query = $this->db->get($this->table);
                return $query->result_array();
        }

        public function orders_count()
        {
                $this->db->where('status', 1);
                $this->db->where('trash', 1);
                $query = $this->db->get($this->table);
                return count($query->result_array());
        }
        // ---đếm tổng số
        public function orders_dem()
        {
                $this->db->where('status!=', 5);
                // $this->db->where('trash', 1);
                $query = $this->db->get($this->table);
                return count($query->result_array());
        }
        // ----
        // ---đếm tổng số
        public function orders_huy()
        {
                $this->db->where('status', 4);
                // $this->db->where('trash', 1);
                $query = $this->db->get($this->table);
                return count($query->result_array());
        }
        // ----
        public function orders_trash_count()
        {
                $this->db->where('trash', 0);
                $query = $this->db->get($this->table);
                return count($query->result_array());
        }

        public function orders_update($mydata, $id)
        {
                $this->db->where('id',$id);
                $this->db->update($this->table, $mydata);
        }

        public function orders_trash($limit, $first)
        {
                $this->db->where('trash',0);
                $query = $this->db->get($this->table, $limit, $first);
                return $query->result_array();
        }

        public function orders_delete($id)
        {
                $this->db->where('id',$id);
                $this->db->delete($this->table);
        }

        public function orders_restore($id)
        {
                $data=array('trash'=>1);
                $this->db->where('id',$id);
                $this->db->update($this->table, $data);
        }

        public function order_follow_month($year, $month)
        {
                $this->db->where('status', 1);
                $this->db->where('trash', 1);
                $this->db->where('YEAR(orderdate)', $year);
                $this->db->where('MONTH(orderdate)', $month);
                $query = $this->db->get($this->table);
                return $query->result_array();
        }
        public function orders_update_number_product($mydata,$id)
        {
                $this->db->where('id',$id);
                $this->db->update('db_product', $mydata);
        }
        public function orders_update_number_product1($mydata1,$id)
        {
                $this->db->where('id',$id);
                $this->db->update('db_product', $mydata1);
        }
         public function product_number_buy($id)
        {
                $this->db->where('id', $id);
                $this->db->limit(1);
                $query = $this->db->get('db_product');
                $row=$query->row_array();
                return $row['number_buy']; 
        }
        public function product_number($id)
        {
                $this->db->where('id', $id);
                $this->db->limit(1);
                $query = $this->db->get('db_product');
                $row=$query->row_array();
                return $row['number']; 
        }
}