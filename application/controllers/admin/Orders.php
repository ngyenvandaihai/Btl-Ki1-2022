<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Mproduct');
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Morders');
		
		$this->load->model('backend/Mprovince');
		$this->load->model('backend/Mdistrict');
		$this->load->model('backend/Morderdetail');
		if(!$this->session->userdata('sessionGreen'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionGreen');
		$this->data['com']='orders';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Morders->orders_count();
		// -----
		$total_rows = $this->Morders->orders_dem();
        $this->data['total_rows'] = $total_rows;
		// ----
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders');
		$this->data['list'] = $this->Morders->orders_listorders($limit, $first);
		$this->data['view']='index';
		$this->data['title']='Danh sách đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function detail($id)
	{
		$this->data['id'] = $id;
		$this->data['view']='detail';
		$this->data['title']='Chi tiết đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id)
	{
		$row=$this->Morders->orders_detail($id);
		$status = $row['status'];
		if($status == 3 )
		{
			$status = 1;
			$mydata= array(
				'status' => $status
			);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
		  foreach ($rowdetail as  $value) {
	
			$idproduct = $value['productid'];
			$countproduct = $value['count'];
	
			//Lấy lên sl number_buy của sp để cộng thêm sl sp đó của đơn hàng
			$number_buy = $this->Morders->product_number_buy($idproduct);
			$number = $this->Morders->product_number($idproduct);

			// cộng số lượng đã mua
			$mydata= array(
			  'number_buy'=> $number_buy+$countproduct, 
			);

			// trừ số lượng sẵn có
			// $mydata1= array(
			// 	'number'=> $number - $countproduct,
			//   );
			//   $this->Morders->orders_update_number_product1($mydata1, $idproduct);
			$this->Morders->orders_update_number_product($mydata, $idproduct);
			$this->session->set_flashdata('success', 'Đơn hàng  '.$row['orderCode'].' đã giao thành công !!');
		  }
		  redirect('admin/orders','refresh');
		}
		else if ($status == 0)
		{
			$status=2;
			$mydata=array(
				'status'=>$status
			);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
			foreach ($rowdetail as  $value) {
	
				$idproduct = $value['productid'];
				$countproduct = $value['count'];
		
				//Lấy lên sl number_buy của sp để cộng thêm sl sp đó của đơn hàng
				$number_buy = $this->Morders->product_number_buy($idproduct);
				$number = $this->Morders->product_number($idproduct);
					// trừ số lượng sẵn có
				$mydata1= array(
					'number'=> $number - $countproduct,
				);
			  $this->Morders->orders_update_number_product1($mydata1, $idproduct);
				// $this->Morders->orders_update_number_product($mydata, $idproduct);
				$this->session->set_flashdata('success', 'Xác nhận đơn hàng  '.$row['orderCode'].' thành công !!');
			  }
			redirect('admin/orders','refresh');
		}
		else if ($status == 2)
		{
			$status=3;
			$mydata=array(
				'status'=>$status
			);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
			foreach ($rowdetail as  $value) {
	
				$idproduct = $value['productid'];
				$countproduct = $value['count'];
		
				//Lấy lên sl number_buy của sp để cộng thêm sl sp đó của đơn hàng
				$number_buy = $this->Morders->product_number_buy($idproduct);
				$number = $this->Morders->product_number($idproduct);

				// $this->Morders->orders_update_number_product($mydata, $idproduct);
				$this->session->set_flashdata('success', 'Đơn hàng  '.$row['orderCode'].' đang được giao !!');
			  }
			redirect('admin/orders','refresh');
		}
		else
		{
			$this->session->set_flashdata('error', 'Không thể chỉnh sửa !');
			redirect('admin/orders','refresh');
		}
		
	}
	public function huydon($id)
	{
		$row=$this->Morders->orders_detail($id);
		
		$status = $row['status'];
		if($status !=4)
		{
			$status = 4;
			$mydata= array('status' => $status);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
		  foreach ($rowdetail as  $value) {
	
			$idproduct = $value['productid'];
			$countproduct = $value['count'];
	
			//Lấy lên sl number_buy của sp để cộng thêm sl sp đó của đơn hàng
			$number_buy = $this->Morders->product_number_buy($idproduct);
			$number = $this->Morders->product_number($idproduct);
			
			$mydata1= array(
				'number'=> $number + $countproduct,
			);
			$this->Morders->orders_update_number_product1($mydata1, $idproduct);
			// $this->Morders->orders_update_number_product($mydata, $idproduct);
			$this->session->set_flashdata('success', ' HỦY ĐƠN HÀNG '.$row['orderCode'].' THÀNH CÔNG !!');
		  }
		  redirect('admin/orders','refresh');
		}
		else
		{
			$this->session->set_flashdata('error', 'Đơn hàng đã hủy, không thể chỉnh sửa !');
			redirect('admin/orders','refresh');
		}
		
	}
	public function tuchoi($id)
	{
		$row=$this->Morders->orders_detail($id);
		
		$status = $row['status'];
		if($status ==0)
		{
			$status = 4;
			$mydata= array('status' => $status);
			$this->Morders->orders_update($mydata, $id);
			$rowdetail = $this->Morderdetail->orderdetail_orderid($id);
		  $this->session->set_flashdata('success', ' HỦY ĐƠN HÀNG '.$row['orderCode'].' THÀNH CÔNG !!');
		  redirect('admin/orders','refresh');
		}
		else
		{
			$this->session->set_flashdata('error', 'Đơn hàng đã hủy, không thể chỉnh sửa !');
			redirect('admin/orders','refresh');
		}
		
	}



	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Morders->orders_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders/recyclebin');
		$this->data['list']=$this->Morders->orders_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác đơn hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$mydata= array('trash' => 0);
		$this->Morders->orders_update($mydata, $id);
		$this->session->set_flashdata('success', 'Xóa đơn hàng vào thùng rác thành công');
		redirect('admin/orders','refresh');
	}

	public function restore($id)
	{
		$this->Morders->orders_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục đơn hàng thành công');
		redirect('admin/orders/recyclebin','refresh');
	}
	public function delete($id)
	{
		$this->Morders->orders_delete($id);
		$this->Morderdetail->orderdetail_delete($id);
		$this->session->set_flashdata('success', 'Xóa đơn hàng thành công');
		redirect('admin/orders','refresh');
	}

}

/* End of file Daspuhboard.php */
/* Location: ./application/controllers/Dashboard.php */