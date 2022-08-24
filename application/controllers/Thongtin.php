<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Thongtin extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='thongtin';
        $this->load->model('frontend/Mcategory');
        $this->load->model('frontend/Mtinhthanhpho');
         $this->load->model('frontend/Mdistrict');
         $this->load->model('frontend/Mcustomer');
         $this->load->model('frontend/Morder');
         $this->load->model('frontend/Morderdetail');
         $this->load->model('frontend/Minfocustomer');

        if(!$this->session->userdata('session24hStore')){
            redirect('dang-nhap','refresh');
        }
        $this->data['info']=$this->Mcategory->customer_detail_id($this->session->userdata('id'));
    }
	public function index(){
        $this->data['title']='24hStore.vn - Thông tin tài khoản';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}
    public function order(){
        $aurl= explode('/',uri_string());
        $id = $aurl[2];
        $this->data['orderid'] = $id;
        $this->data['row'] = $this->Mcategory->orderdetail_order_join_product($id);
        $this->data['info']=$this->Mcategory->order_orderid($id);
        $this->data['title']='24hStore - Chi tiết đơn hàng';  
        $this->data['view']='detail';
        $this->load->view('frontend/layout',$this->data);
    }
    public function reset_password(){
        $row=$this->Mcustomer->customer_check_username($this->session->userdata('username'));
        $this->data['row']=$row;
        $this->load->library('form_validation');
        $this->form_validation->set_rules('password_old', 'Mật khẩu', 'required|callback_check_password');
        $this->form_validation->set_rules('password', 'Mật khẩu', 'required|min_length[6]|max_length[32]');
        $this->form_validation->set_rules('re_password', 'Nhập lại mật khẩu', 'required|matches[password]');
        if($this->form_validation->run() ==TRUE){ 
            $password_old = $_POST['password_old'];
            $password_new = md5($_POST['password']);
            if($this->session->userdata('sessionKhachHang')){
                $mydata= array(
                    'password' => $password_new,
                );
            }else{
               redirect('/dang-nhap','refresh');
           }
           $this->Mcustomer->customer_update($mydata, $this->session->userdata('id'));
           $this->data['successpassword']='Đổi mật khẩu thành công';
           echo '<script>alert("Mật khẩu đã được thay đổi thành công !")</script>';
           redirect('thong-tin-khach-hang','refresh');
       }
       $this->data['title']='Smart Store - Đổi mật khẩu';
       $this->data['view']='reset_password';
       $this->load->view('frontend/layout',$this->data);
   }
    public function update($id){
        $row=$this->Morder->order_detail($id);
        $status = $row['status'];
        if($status == 0)
        {
            $status = 3;
            $mydata= array('status' => $status);
            $this->Morder->order_update($mydata, $id);
            redirect('thong-tin-khach-hang','refresh');
        }
    }
   function check_password(){
        $row=$this->Mcustomer->customer_detail_email($this->session->userdata('email'));
        $password = $this->input->post('password_old');
        if(md5($password)!= $row['password']){
            $this->form_validation->set_message(__FUNCTION__, 'Mật khẩu cũ không chính xác');
            return FALSE;
        }
        return TRUE;
    }  
    public function huy($id)
	{
		$row=$this->Morders->orders_detail($id);
		
		$status = $row['status'];
		if($status ==0)
		{
			$status = 4;
			$mydata= array('status' => $status);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
		  $this->session->set_flashdata('success', ' HỦY ĐƠN HÀNG  THÀNH CÔNG !!');
          redirect('thong-tin-tai-khoan','refresh');
		}
		else
		{
			$this->session->set_flashdata('error', 'Đơn hàng đã hủy, không thể chỉnh sửa !');
            redirect('thong-tin-tai-khoan','refresh');
		}
    }
}