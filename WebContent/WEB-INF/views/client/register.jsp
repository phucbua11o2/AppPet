
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Thanh toán</title>
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
									<h3>Recently added items (${sessionScope.myCartNum})</h3>
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
						<li><a href="contact.htm">Contact </a></li>

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
						<a href="#">Welcome visitor you can login or create an
							account.</a>
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
	
	<div class="container">
		<div class="account">
			<h2 class="account-in">Tạo mới tài khoản</h2>
			<br>
			<br>
			<p style="color: red;text-align:center">${msgRe}</p>
			<br>
			                <div class="login-block">
                    <form:form method="post" action="${pageContext.servletContext.contextPath}/client/register.htm" modelAttribute="user" >
                        
                        <p>Họ và tên:</p>
                        <form:input path="name"/>
                        <div class="notice">
                        <form:errors path="name" />
                         </div>
                        <br>
                        <p>Tài khoản:</p>
                        <form:input path="username"/>
                        <div class="notice">
                        <form:errors path="username" />
                         </div>
                        <br>
                        <p>Mật khẩu:</p>
                        <form:password path="password"/>
                        <div class="notice">
                        <form:errors path="password" />
                         </div>
                        <br>
                        <p>Xác nhận:</p>
                        <input type="password" name="repassword"/>
                        <br>
                        <p>Giới tính:</p>
						<form:radiobutton path="gender" value="true" label="Nam" />
						<form:radiobutton path="gender" value="false" label="Nữ" />
                        <br>
                        <p>Email:</p>
                        <form:input path="email"/>
                        <div class="notice">
                        <form:errors path="email" />
                         </div>
                        <br>
                        <p>Số điện thoại:</p>
                        <form:input path="phone"/>
                        <div class="notice">
                        <form:errors path="phone" />
                         </div>
                        <br>
                        <p>Địa chỉ:</p>
                        <form:input path="address"/>
                        <div class="notice">
                        <form:errors path="address" />
                        </div>
                        <br>
                        <br>
                        <br>
                        <input type="submit" value="Đăng ký">
                		
                		<br>
                    </form:form>
                    <br>
					<a href="${pageContext.servletContext.contextPath}/trang-chu.htm"><input type="submit" value="Hủy bỏ"></a>
			</div>
				  
		
	</div>
		<!---->
		<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="col-md-4 footer-in">
					<h4>
						<i> </i>Sứ mệnh
					</h4>
					<p>PETSHOP xác định cho mình sứ mệnh trở thành "cánh tay nối dài của khách hàng", dịch vụ của chúng tôi giúp khách hàng nâng cao hiệu suất sản xuất, tiết kiệm về thời gian, chi phí. Từ đó, khách hàng chỉ cần tập trung vào công việc sản xuất chuyên môn, nâng cao doanh số sản phẩm, góp phần thúc đẩy nền kinh tế nước nhà.</p>
				</div>
				
				<div class="col-md-4 footer-in">
					<h4>
						<i class="down"> </i>Đảm bảo chất lượng
					</h4>
					<p>Công ty chúng tôi cam kết tất cả sản phẩm đều đảm bảo chất lượng,giá tốt nhất trên thị trường,bảo hành trọn đời</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!---->
		<div class="footer-middle">
			<div class="container">
				<div class="footer-middle-in">
					<h6>About us</h6>
					<p> PETSHOP
						Email:abc@gmail.com
					    Địa chỉ:91A,Quận 9,TP.HCM
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
			<p class="footer-class">Copyright Â© 2015 Bonfire Template by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
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
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>