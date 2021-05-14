
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.img {
	width: 204px;
	height: 177px
}
</style>

<meta charset="utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Home</title>
<link href="<c:url value='/resources/client/css/bootstrap.css'/>"
	rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value='/resources/client/js/jquery.min.js'/>"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<c:url value='/resources/client/css/style.css'/>"
	rel="stylesheet" type="text/css" media="all" />

<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript"
	src="<c:url value='/resources/client/js/move-top.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/client/js/easing.js'/>"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--slider-script-->
<script
	src="<c:url value='/resources/client/js/responsiveslides.min.js'/>"></script>
<script>
	$(function() {
		$("#slider1").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--//slider-script-->
<script>
	$(document).ready(function(c) {
		$('.alert-close').on('click', function(c) {
			$('.message').fadeOut('slow', function(c) {
				$('.message').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.alert-close1').on('click', function(c) {
			$('.message1').fadeOut('slow', function(c) {
				$('.message1').remove();
			});
		});
	});
</script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in">
					<div class="logo">
						<a href="trang-chu.htm"><img
							src="resources/client/images/logo.jpg" alt=" "></a>
					</div>
					<div class="header-in">
						<ul class="icon1 sub-icon1">
							<li><a href="client/orderList.htm">ĐƠN HÀNG</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/login.htm">
									TÀI KHOẢN</a></li>
							<li><a href="client/cart.htm"> GIỎ HÀNG</a></li>
							<li><a href="client/checkout.htm">THANH TOÁN</a></li>

							<!--//giỏ hàng nhỏ-->
							<li>
								<div class="cart">
									<a href="client/cart.htm" class="cart-in"> </a> <span> <c:out
											value="${sessionScope.myCartNum}" /></span>
								</div>
								<ul class="sub-icon1 list">
									<h3>Được thêm gần đây (${sessionScope.myCartNum})</h3>
									<div class="shopping_cart">
										<c:forEach var="map" items="${sessionScope.myCartItems}">
											<div class="cart_box">
												<div class="message">
													<!-- 	<div class="alert-close"></div>    -->
													<div class="list_img">
														<img
															src="${pageContext.request.contextPath}/resources/client/images/${map.value.product.photo}"
															class="img-responsive" alt="">
													</div>
													<div class="list_desc">
														<h4>
															<a href="#"><c:out value="${map.value.product.name}" /></a>
														</h4>
														<c:out value="${map.value.quantity}" />
														x $
														<c:out value="${map.value.product.price}" />
														= <span class="actual"> $<c:out
																value="${map.value.quantity * map.value.product.price}" /></span>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="total">
										<div class="total_left">Total:</div>
										<div class="total_right">
											$
											<c:out value="${sessionScope.myCartTotal}" />
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="login_buttons">
										<div class="check_button">
											<a href="client/checkout.htm">Check out</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</ul>
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<div class="h_menu4">
					<a class="toggleMenu" href="#">Menu</a>
					<ul class="nav">
						<li class="active"><a
							href="${pageContext.servletContext.contextPath}/trang-chu.htm"><i>
							</i>Trang chủ</a></li>
							<c:forEach var="c" items="${listCategory}">
							<li><a href="client/products/${c.id}.htm">${c.name}</a></li>
						</c:forEach> 
					</ul>
					<script type="text/javascript"
						src="<c:url value='/resources/client/js/nav.js'/>"></script>
				</div>
			</div>
		</div>
		<div class="header-bottom-in">
			<div class="container">
				<div class="header-bottom-on">
					<p class="wel">
						<a href="#"> </a>
					</p>
					<div class="header-can">
						<ul class="social-in">
							<li><a href="#"><i> </i></a></li>
							<li><a href="https://www.facebook.com/"><i
									class="facebook"> </i></a></li>
							<li><a href="#"><i class="twitter"> </i></a></li>
							<li><a href="#"><i class="skype"> </i></a></li>
						</ul>
						<div class="down-top">
							<select class="in-drop">
								<option value="Dollars" class="in-of">Dollars</option>
								<option value="Euro" class="in-of">Euro</option>
								<option value="Yen" class="in-of">Yen</option>
							</select>
						</div>
						<div class="search">
							<form>
								<input type="text" value="Search" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = '';}"> <input
									type="submit" value="">
							</form>
						</div>

						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner-mat">
		<div class="container">
			<div class="banner">

				<!-- Slideshow 4 -->
				<div class="slider">
					<ul class="rslides" id="slider1">
						<li><img src="resources/client/images/baner0.jpg" alt="">
						</li>
						<li><img src="resources/client/images/baner2.jpg" alt="">
						</li>
						<li><img src="resources/client/images/baner3.jpg" alt="">
						</li>
						<li><img src="resources/client/images/baner4.jpg" alt="">
						</li>
					</ul>
				</div>

				<div class="banner-bottom">
					<div class="banner-matter">
						<p>SaleOff</p>
						<a href="single.htm" class="hvr-shutter-in-vertical ">Đến</a>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //slider-->
		</div>
	</div>
	<!---->
			<div class="container">
				<div class="products">
					<h2 class=" products-in">Danh sách các mặt hàng</h2>
					<div class=" top-products">
						<c:forEach var="p" items="${listPro}" varStatus="status">
							<div class="col-md-3 md-col">
								<div class="col-md">

									<a href="client/single/${p.id}.htm" class="compare-in"><img
										class="img" src="resources/client/images/${p.photo}" alt="" />

									</a>
									<div class="top-content">
										<h5>
											<a href="client/single/${p.id}.htm">${p.name}</a>
										</h5>
										<div class="white">
											<a href="client/cart/add/${p.id}.htm"
												class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm
												vào giỏ hàng </a>
											<p class="dollar">
												<span class="in-dollar">$</span><span>${p.price}</span>
											</p>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</div>
							<c:if test="${status.index==3}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>

							<c:if test="${status.index==7}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>

							<c:if test="${status.index==11}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>

							<c:if test="${status.index==15}">
								<div class="clearfix"></div>
								<br>
								<br>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
	<br/>
	<!---->
	<div class="container">
		<div class="content">
			<div class="content-top">
				<h3 class="future">Nổi Bật</h3>
				<div class="content-top-in">
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.htm"><img src="resources/client/images/1.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.htm">1</a>
								</h5>
								<div class="white">
									<a href="single.htm"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Thêm vào giỏ hàng</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>2</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>

							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.htm"><img src="resources/client/images/2.jpg"
								alt="" /> </a>
							<div class="top-content">
								<h5>
									<a href="single.htm">2</a>
								</h5>
								<div class="white">
									<a href="single.htm"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>3</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.htm"><img src="resources/client/images/3.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.htm">3</a>
								</h5>
								<div class="white">
									<a href="single.htm"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>5</span><span>0</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3 md-col">
						<div class="col-md">
							<a href="single.htm"><img src="resources/client/images/4.jpg"
								alt="" /></a>
							<div class="top-content">
								<h5>
									<a href="single.htm">4</a>
								</h5>
								<div class="white">
									<a href="single.htm"
										class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
									<p class="dollar">
										<span class="in-dollar">$</span><span>4</span><span>5</span>
									</p>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!---->
			<div class="content-middle">
				<h3 class="future">Giống nhập</h3>
				<div class="content-middle-in">
					<ul id="flexiselDemo1">
						<li><img src="resources/client/hinhanh/A.gif" alt="   " /></li>
						<li><img src="resources/client/hinhanh/B.gif" alt="   " /></li>
						<li><img src="resources/client/hinhanh/C.gif" alt="   " /></li>
						<li><img src="resources/client/hinhanh/E.png" alt="   " /></li>
						<li><img src="resources/client/hinhanh/F.gif" alt="   " /></li>
						<li><img src="resources/client/hinhanh/G.png" alt="   " /></li>
						<li><img src="resources/client/hinhanh/H.gif" alt="   " /></li>
					</ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems : 4,
								animationSpeed : 1000,
								autoPlay : true,
								autoPlaySpeed : 3000,
								pauseOnHover : true,
								enableResponsiveBreakpoints : true,
								responsiveBreakpoints : {
									portrait : {
										changePoint : 480,
										visibleItems : 1
									},
									landscape : {
										changePoint : 640,
										visibleItems : 2
									},
									tablet : {
										changePoint : 768,
										visibleItems : 3
									}
								}
							});

						});
					</script>

					<script
						src="<c:url value='/resources/client/js/jquery.flexisel.js'/>"></script>

				</div>
			</div>
			<!---->
			<div class="container">
				<div class="content">


					<!---->
					<div class="content-bottom">
						<h3 class="future">Các sản phẩm khác</h3>
						<div class="content-bottom-in">
							<ul id="flexiselDemo2">
								<li><div class="col-md men">
										<a href="single.htm" class="compare-in "><img
											src="resources/client/images/5.jpg" alt="" /> </a>
										<div class="top-content bag">
											<h5>
												<a href="single.htm">5</a>
											</h5>
											<div class="white">
												<a href="single.htm"
													class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
												<p class="dollar">
													<span class="in-dollar">$</span><span>4</span><span>0</span>
												</p>
												<div class="clearfix"></div>
											</div>
										</div>
									</div></li>
								<li><div class="col-md men">
										<a href="single.htm" class="compare-in "><img
											src="resources/client/images/6.jpeg" alt="" /> </a>
										<div class="top-content bag">
											<h5>
												<a href="single.htm">6</a>
											</h5>
											<div class="white">

											<a href="single.htm"
													class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng
													</a>
												
												<p class="dollar">
													<span class="in-dollar">$</span><span>2</span><span>5</span>
												</p>
												<div class="clearfix"></div>
											</div>
										</div>
									</div></li>
								<li><div class="col-md men">
										<a href="single.htm" class="compare-in "><img
											src="resources/client/images/7.jpg" alt="" /> </a>
										<div class="top-content bag">
											<h5>
												<a href="single.htm">7</a>
											</h5>
											<div class="white">
												<a href="single.htm"
													class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
												<p class="dollar">
													<span class="in-dollar">$</span><span>1</span><span>0</span>
												</p>
												<div class="clearfix"></div>
											</div>
										</div>
									</div></li>
								<li><div class="col-md men">
										<a href="single.htm" class="compare-in "><img
											src="resources/client/images/10.jpg" alt="" /> <br /> <br />
										</a>
										<div class="top-content bag">
											<h5>
												<a href="single.htm">8</a>
											</h5>
											<div class="white">
												<a href="single.htm"
													class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">Thêm vào giỏ hàng</a>
												<p class="dollar">
													<span class="in-dollar">$</span><span>6</span><span>0</span>
												</p>
												<div class="clearfix"></div>
											</div>
										</div>
									</div></li>

							</ul>
							<script type="text/javascript">
								$(window).load(function() {
									$("#flexiselDemo2").flexisel({
										visibleItems : 4,
										animationSpeed : 1000,
										autoPlay : true,
										autoPlaySpeed : 3000,
										pauseOnHover : true,
										enableResponsiveBreakpoints : true,
										responsiveBreakpoints : {
											portrait : {
												changePoint : 480,
												visibleItems : 1
											},
											landscape : {
												changePoint : 640,
												visibleItems : 2
											},
											tablet : {
												changePoint : 768,
												visibleItems : 3
											}
										}
									});

								});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!---->
			<br> <br> <br>


			<div class="footer">
				<div class="footer-top">
					<div class="container">
						<div class="col-md-4 footer-in">
							<h4>
								<i> </i>Sứ mệnh
							</h4>
							<p>PETSHOP xác định cho mình sứ mệnh trở thành "cánh tay nối
								dài của khách hàng", dịch vụ của chúng tôi giúp khách hàng nâng
								cao hiệu suất sản xuất, tiết kiệm về thời gian, chi phí.</p>
						</div>

						<div class="col-md-4 footer-in">
							<h4>
								<i class="down"> </i>Đảm bảo chất lượng
							</h4>
							<p>Công ty chúng tôi cam kết tất cả sản phẩm đều đảm bảo chất
								lượng,giá tốt nhất trên thị trường,bảo hành trọn đời</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>

				<!---->

				<div class="footer-middle">
					<div class="container">
						<div class="footer-middle-in">
							<h6>About us</h6>
							<p>PETSHOP Email:abc@gmail.com Địa chỉ:91A,Quận 9,TP.HCM
								SDT:012345678</p>
						</div>
						<div class="footer-middle-in">
							<h6>Information</h6>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Delivery Information</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</div>
						<div class="footer-middle-in">
							<h6>Customer Service</h6>
							<ul>
								<li><a href="contact.htm">Contact Us</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Site Map</a></li>
							</ul>
						</div>
						<div class="footer-middle-in">
							<h6>My Account</h6>
							<ul>
								<li><a href="account.htm">My Account</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="wishlist.htm">Wish List</a></li>
								<li><a href="#">Newsletter</a></li>
							</ul>
						</div>
						<div class="footer-middle-in">
							<h6>Extras</h6>
							<ul>
								<li><a href="#">Brands</a></li>
								<li><a href="#">Gift Vouchers</a></li>
								<li><a href="#">Affiliates</a></li>
								<li><a href="#">Specials</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<p class="footer-class">
					Copyright © 2015 Modern Template by PETSHOP <a
						href="http://w3layouts.com/" target="_blank">W3layouts</a>
				</p>
				<script type="text/javascript">
					$(document).ready(function() {
						/*
						var defaults = {
							containerID: 'toTop', // fading element id
							containerHoverID: 'toTopHover', // fading element hover id
							scrollSpeed: 1200,
							easingType: 'linear' 
						};
						 */

						$().UItoTop({
							easingType : 'easeOutQuart'
						});

					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span
					id="toTopHover" style="opacity: 1;"> </span></a>

			</div>
</body>
</htm>