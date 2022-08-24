<?php
$d=getdate();
$year=$d['year'];
$total = 0; $cost = 0;
for ($i=1; $i <= 12 ; $i++) 
{   
  $list_orrders = $this->Morders->order_follow_month($year, $i);
  $sum = 0;
  foreach ($list_orrders as $row_orrder) 
  {
    $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
    foreach ($order_detail as $value) {
      $sum += $value['count'];
    }
    $total += $row_orrder['money'];
  }
}
?> 
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <!-- Main content -->
  <section class="content">
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner" style="height: 110px;">
          <b style="font-size: 40px;"><?php echo $total1 ?> /</b><span style="font-size: 15px;">  <?php echo $total1_tong?> sản phẩm</span>
           
            <!-- <p>Sản phẩm còn bán / <?php echo $total1_tong; ?> sản phẩm</p> -->
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
          <a href="<?php echo base_url() ?>admin/product" class="small-box-footer">Sản phẩm còn kinh doanh</a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner" style="height: 110px;">
          <b style="font-size: 40px;"><?php echo $total4 ?> /</b><span style="font-size: 15px;">  <?php echo $total4_tong?> giao dịch</span>
            <!-- <h3><?php echo $total4; '/' ?></h3><span><?php echo $total4_tong;?> </span> -->
            <p><?php echo $total_huy; ?> đơn đã hủy </p>
          </div>
          <div class="icon">
            <i class="ion ion-cube"></i>
          </div>
          <a href="<?php echo base_url() ?>admin/orders" class="small-box-footer">Đơn hàng đã hoàn thành</a>
        </div>
      </div>

      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner" style="height: 110px;">
            <h3><?php echo $total2; ?></h3>
            <p>Tin</p>
          </div>
          <div class="icon">
            <i class="ion ion-android-chat "></i>
          </div>
          <a href="<?php echo base_url() ?>admin/content" class="small-box-footer">Danh sách tin tức</a>
        </div>
      </div>



      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
          <div class="inner" style="height: 110px;">
            <h3><?php echo $total3; ?></h3>
            <p>Khách hàng</p>
          </div>
          <div class="icon">
            <i class="ion ion-email"></i>
          </div>
          <a href="<?php echo base_url() ?>admin/customer" class="small-box-footer">Tài khoản khách hàng</a>
        </div>
      </div>
      <!-- ./col -->
     
      <!-- ./col -->
    </div>
    <!-- /.row -->
  </section>

  <section class="content">
    <div class="row">
      <!-- /.col (LEFT) -->
      <div class="col-md-12">
        <!-- LINE CHART -->
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Bán hàng & Doanh thu</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="chart">
              <div id="chart_div" style="width: 100%; height: 250px;"></div>
            </div>
          </div>
          <div class="box-footer">
            <div class="row">
              <div class="col-sm-4 col-xs-6">
                <div class="description-block border-right">
                  <h5 class="description-header" style="color: #e90000;"><?php echo number_format($total);?> VNĐ</h5>
                  <span class="description-text">Tổng doanh thu</span>
                </div>
                <!-- /.description-block -->
              </div>
              <!-- /.col -->
            </div>
            <?php
          $d=getdate();
          $year=$d['year'];
          for ($i=1; $i <= 12 ; $i++) 
          {   
            $list_orrders = $this->Morders->order_follow_month($year, $i);
            $total_month = 0;
            foreach ($list_orrders as $row_orrder) 
            {
              $total_month += $row_orrder['money'];
            }
            echo '<div class="col-sm-4 col-xs-6">
                <div class="description-block border-right" style="display: inline-flex;">
                  <span class="description-text">Doanh thu tháng '.$i.' :  </span> 
                  <h5 class="description-header" style="color: #e90000;padding-left: 10px;">'.number_format($total_month).' VNĐ</h5>
                </div>
                <!-- /.description-block -->
              </div>';
          }
          ?>
            <!-- /.row -->
          </div>
          <!-- /.box-body -->
        </div>
      </div> 
    </section>
    <!-- /.content -->
    <section class="content">
    <div class="row">
      <!-- /.col (LEFT) -->
      <div class="col-md-12">
        <!-- LINE CHART -->
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Thống kê theo sản phẩm</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
              </button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div class="chart">
              <div id="chart_div" style="width: 100%; ">
                <!-- --- -->
                <div class="table-responsive">
								<table class="table table-hover table-bordered">
									<thead>
										<tr>
											<th class='text	-center' style='width:10px;'><input name='checkAll' id='checkAll' type='checkbox'/></th>
											<th class="text-center" style="width:20px">ID</th>
											<th>Hình</th>
											<th>Tên sản phẩm</th>
											<th class="text-center" style="width:90px">Tồn kho</th>
											<!-- <th class="text-center" style="width:90px">Bình luận</th> -->
											<th class="text-center" style="width:70px">Đã bán</th>
											<th class="text-center" style="width:100px">Tỉ lệ</th>
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $val):?>
										<tr>
											<td class="text-center" style="width:20px"><input name="checkboxid[]" type="checkbox" value="$id"></td>
											<td class="text-center"><?php echo $val['id'] ?></td>
											<td style="width:70px">
												<img src="public/images/products/<?php echo $val['avatar'] ?>" alt="<?php echo $val['name'] ?>" class="img-responsive">
											</td>
											<td><a href="<?php echo base_url() ?>admin/product/update/<?php echo $val['id'] ?>"><?php echo $val['name'] ?> </a></td>
											<?php 
												$namecat = $this->Mcategory->category_name($val['catid']);
											?>
											
											<td class="text-center">
												<p><?php echo $val['number'] ?></p>
											</td>
											
											<td class="text-center">
												<p><?php echo $val['number_buy'] ?> </p>
											</td>
											<td class="text-center">
                        <?php if($val['number'] > 0):?>
                        <b><?php $tile=($val['number_buy'] / ($val['number']+$val['number_buy']))*100; echo round($tile,2); ?></b> %</td>
                        <?php else:?>
                            <b style="font-weight:bold;color:red"> Đã hết hàng</b>
                        <?php endif;?>   	

											
											</td>
										</tr>
									<?php endforeach; ?>
									</tbody>
								</table>
							</div>
                <!-- ---- -->
              </div>
            </div>
        </div>
          <div class="box-footer">
            </div>
            
            <!-- /.row -->
          </div>
          <!-- /.box-body -->
        </div>
      </div> 
</section>
<div style="margin-left: 1%;">
  <a class="btn btn-primary btn-md" role="button" onclick="window.print()">
    <span class="glyphicon glyphicon-print"></span> In 
  </a>
</div>



  </div>
  <!-- /.content-wrapper -->






  <script>
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawVisualization);

   function drawVisualization() {
    var data = google.visualization.arrayToDataTable([
     ['Month', 'Bán ra', 'Đơn hàng'],
     <?php
     $d=getdate();
     $year=$d['year'];
     for ($i=1; $i <= 12 ; $i++) 
     {   
      $list_orrders = $this->Morders->order_follow_month($year, $i);
      $sum = 0;
      foreach ($list_orrders as $row_orrder) 
      {
        $order_detail = $this->Morderdetail->orderdetail_orderid($row_orrder['id']);
        foreach ($order_detail as $value) {
          $sum += $value['count'];
        }
      }
      if($i >= 1 && $i <=9)
      {
        echo "['0".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
      else
      {
        echo "['".$i.'/'.$year."',".$sum.",".count($list_orrders)."],";
      }
    }
    ?>

    ]);

    var options = {
      title: 'Số lượng bán ra từ 01/2022 - 12/2022',
      seriesType: 'bars'
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  } 
</script>

