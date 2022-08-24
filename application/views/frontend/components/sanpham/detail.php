<section id="product-detail">
	<div class="container">
		<div class="products-wrap">
			<form action="" method="post" id="ProductDetailsForm">
				<?php if($row):?>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 listimg-desc-product">
						<?php $this->load->view('frontend/modules/jcarousel');?>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<div class="product-view-content">
							<div class="product-view-name">
								<h1><?php echo $row['name'] ?></h1>
							</div>
							<div class="product-view-price">
								<div class="pull-left">
									<span class="price-label">Giá bán:</span>
									<span class="price"><?php echo (  number_format($row['price']-($row['price']*$row['sale']/100))   )?>₫</span>
								</div>
								<?php if($row['sale']>0): ?>
									<div class="product-view-price-old">
										<span class="price"><?php echo number_format($row['price']) ?>₫</span>
										<span class="sale-flag">-<?php echo $row['sale'] ?>%</span>
									</div>
								<?php endif; ?>
							</div>
							<div class="product-status">
								<p style=" float: left;margin-right: 10px;">Danh mục: <?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?></p>
							<br>	<p style=" float: left;margin-right: 10px;">Thương hiệu: <?php $name1=$this->Mproducer->producer_name($row['producer']); echo $name1; ?></p>
								
							<br>	<p>Tình trạng: <?php if($row['number']==0) echo 'Hết hàng'; else echo 'Còn hàng' ?></p>
							</div>
							<div class="product-view-desc">
								<h4>Mô tả:</h4>
								<p><?php echo $row['sortDesc'] ?></p>
							</div>
							<div class="actions-qty">
								<!-- <label for="qty">Số lượng</label>
								<input type="number" class="input-text qtyDetail" title="Qty" value="1" min="1" maxlength="<?php echo $row['number'] ?>" id="qtyDetail" name="quantity"> -->
								<!-- <div class="actions-qty__button">
									<button class="button btn-cart add_to_cart_detail detail-button" title="Mua ngay" aria-label="Mua ngay"><span><i class="fa fa-shopping-cart" aria-hidden="true"></i> Mua ngay</span></button>
									<buttion class="hotline detail-hotline" aria-label="Hotline" title="Holine: 08.62632424" onclick="window.location.href='tel:08.62632424'"><i class="fa fa-volume-control-phone" aria-hidden="true"></i>  08.62632424</buttion>
								</div> -->
								<div class="actions-qty">
								<?php
								if($row['number'] ==0 || $row['number'] < 0){
									echo'<h2 style="color:red;">Tạm hết hàng</h2>';
								} else{
									echo '<div class="actions-qty__button">
									<button class="button btn-cart add_to_cart_detail detail-button" title="Thêm vào giỏ hàng" type="button" aria-label="Thêm vào giỏ hàng" class="fa fa-shopping-cart" onclick="onAddCart('.$row['id'].')"> Thêm vào giỏ hàng</button>
									
								</div>';
								}
								?>
							</div>
							</div>
							<div class="product-view-payments">
								<!-- <label>Chấp nhận thanh toán</label>
								<img src="public/images/baokim.png">
								<img src="public/images/vietcombank.png"> -->
								
							</div>
						</div>
					</div>
					<div class="product-v-desc">
						<h3>Đặc điểm nổi bật</h3>
						<?php echo $row['detail']?>
					</div>
					<div class="product-comment product-v-desc">
						<!-- XEM LẠI PHẦN ĐĂNG NHẬP -->
						<!-- <h3>Bình luận</h3>
						<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
							<?php if(!$this->session->userdata('session24hStore')):?>
								<p>Bạn chưa đăng nhập, nhấn vào <a href="dang-nhap"> đây </a> để đăng nhập !</p>
							<?php  else :?>
								<div class="user-comments">
									<form action="#">
										<input type="text" name="content" placeholder="Nhập bình luận">
									</form>
								</div>
							<?php endif;?>
							<div class="fb-comments" data-href="<?php echo base_url() ?><?php echo $row['alias'] ?>" data-numposts="5"></div>
						</div> -->
					</div>
					<!-- XEM LẠI PHẦN ĐĂNG NHẬP -->
					<div class="product-comment product-v-desc product-">
						<h3>Sản phẩm cùng loại</h3>
						<?php 
						$sm_products = $this->Mproduct->product_similar($row['catid'], $row['id'], 12);?>
						<?php 
						if(count($sm_products)>=1):?>
							<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12 product-similar-wrap" style="border: none;">
							<?php foreach ($sm_products as $row) :?>
                                <div class="item col-md-2 col-sm-2 col-xs-6 product-one">
								<div class="image-product">
                                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                            <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="" class="img-bg">
                                            <!-- <div class="img-bg" style="background: url(public/images/products/<?php echo $row['avatar'] ?>);">
                                            </div> -->
                                        </a>
                                        <h4>
                                            <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" class="ws-nw overflow ellipsis"><?php echo $row['name'] ?></a>
                                        </h4>
                                    </div>
                                    <div class="price-product-item">
                                        <?php if($row['sale'] > 0) :?>
                                            <span class=""><?php echo(  number_format($row['price']-($row['price']*$row['sale']/100))   ); ?>₫</span>
                                            <span><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php else: ?>
                                            <span class=""><?php echo(number_format($row['price'])); ?>₫</span>
                                            <span style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if($row['sale'] > 0) :?>
                                        <div class="sale-flash">
                                            -<?php echo $row['sale'] ?>%
                                        </div>
                                    <?php endif; ?>
                                    <div class="number_buy" style="color: #685e52;">
                                    <span class="">Đã bán <?php echo(number_format($row['number_buy'])); ?> sản phẩm</span>
                                    </div>
                                    <!-- <div class="btn-action">
                                        <button type="button" class="fa fa-shopping-cart" onclick="onAddCart(<?php echo $row['id']  ?>)"></button>
                                        <button type="button" class="fa fa-eye""></button>
                                    </div> -->
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                        	<p>Chưa có sản phẩm cùng loại !</p>
                        <?php endif; ?>
					</div>
									
					<!-- -------SẢN PHẨM CUNG THƯƠNG HIỆU -->
					<div class="clear">
						<p style="    color: white;"> a</p>
					</div>
					<div class="product-comment product-v-desc product-">
						<h3>Sản phẩm cùng thương hiệu</h3>
						<?php 
						$sm_products1 = $this->Mproduct->product_thuonghieu($row['producer'], $row['id'], 12);?>
						<?php 
						if(count($sm_products1)>=1):?>
							<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12 product-similar-wrap" style="border: none;margin-bottom: 50px;">
							<?php foreach ($sm_products1 as $row) :?>
                                <div class="item col-md-2 col-sm-2 col-xs-6 product-one">
								<div class="image-product">
                                        <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>">
                                            <img src="public/images/products/<?php echo $row['avatar'] ?>" alt="" class="img-bg">
                                            <!-- <div class="img-bg" style="background: url(public/images/products/<?php echo $row['avatar'] ?>);">
                                            </div> -->
                                        </a>
                                        <h4>
                                            <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" class="ws-nw overflow ellipsis"><?php echo $row['name'] ?></a>
                                        </h4>
                                    </div>
                                    <div class="price-product-item">
                                        <?php if($row['sale'] > 0) :?>
                                            <span class=""><?php echo(  number_format($row['price']-($row['price']*$row['sale']/100))   ); ?>₫</span>
                                            <span><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php else: ?>
                                            <span class=""><?php echo(number_format($row['price'])); ?>₫</span>
                                            <span style="color: #fff"><?php echo(number_format($row['price'])); ?>₫</span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if($row['sale'] > 0) :?>
                                        <div class="sale-flash">
                                            -<?php echo $row['sale'] ?>%
                                        </div>
                                    <?php endif; ?>
                                    <div class="number_buy" style="color: #685e52;">
                                    <span class="">Đã bán <?php echo(number_format($row['number_buy'])); ?> sản phẩm</span>
                                    </div>
                                    <!-- <div class="btn-action">
                                        <button type="button" class="fa fa-shopping-cart" onclick="onAddCart(<?php echo $row['id']  ?>)"></button>
                                        <button type="button" class="fa fa-eye""></button>
                                    </div> -->
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        <?php else: ?>
                        	<p>Chưa có sản phẩm cùng thương hiệu !</p>
                        <?php endif; ?>
					</div>
					<!-- ------------- -->
				<?php endif; ?>	
			</form>
		</div>
	</div>
</section>
<script>
    function onAddCart(id){
        var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {id: id},
            success: function(data) {
                document.location.reload(true);
                alert('Thêm sản phẩm vào giỏ hàng thành công !');
            }
        });
    }
</script>
