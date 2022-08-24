<section id="header">
	<nav class="navbar navbar-inverse" style="z-index: 9999">
      	<div class="container">
	        <div class="col-md-12 col-lg-12">
	        	<div class="navbar-header">
		          	<button type="button" class="navbar-toggle collapsed pull-right" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
		          	</button>
		          	<div class="icon-cart-mobile hidden-md hidden-lg">
		          		<a href="#">
		          			<i class="fa fa-shopping-cart" aria-hidden="true"></i>
		          			<span>0</span>
		          		</a>
		          	</div>
                    <!-- <div class="site-container">
                        <a href="#" class="header__icon pull-left" id="header__icon"></a>
                    </div> -->
		        </div>
		        <div id="navbar" class="collapse navbar-collapse">
		          	<ul class="nav navbar navbar-nav" id="nav1">
		            	<li><a href="/">Trang chủ</a></li>
		            	<li><a href="san-pham/1">Sản phẩm</a></li>
		            	<li><a href="tin-tuc/1">Tin tức</a></li>
		            	<li><a href="gioi-thieu">Giới thiệu</a></li>
		            	<li><a href="lien-he">Liên hệ</a></li>
		            	<li><a href="thong-tin-tai-khoan">Tài khoản</a></li>
						<?php 
                		if($this->session->userdata('session24hStore')){
                			echo "<li><a href='dang-xuat'>Thoát</a></li>";
                		}else{
                			echo "<li><a href='dang-ky'>Đăng ký</a></li>";
                			echo "<li><a href='dang-nhap'>Đăng nhập</a></li>";
                		}
                		?>
                	</ul>
                	<ul class="nav navbar navbar-nav pull-right" id="nav2">
                		<?php 
                		if($this->session->userdata('session24hStore')){
                			$name=$this->session->userdata('sessionKhachHang_name');
                			echo "<li><a href='thong-tin-tai-khoan'> $name Xin chào: Vương Thủy Nguyên </a></li>";
                			echo "<li><a href='dang-xuat'>Thoát</a></li>";
                		}else{
                			echo "<li><a href='dang-ky'>Đăng ký</a></li>";
                			echo "<li><a href='dang-nhap'>Đăng nhập</a></li>";
                		}
                		?>
                	</ul>
		        </div>
	        </div>
      	</div>
    </nav>
</section>
