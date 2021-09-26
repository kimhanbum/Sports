<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>경매거래 메인</title>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<style>
#paging {
	color: black;
}

.pagination {
	position: absolute;
	left: 40%;
}

.pagination a {
	color: black;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#ddd
;


}
#paging {
	text-align: center;
	margin-top: 0
}

#timeback {
	width: 100%;
	height: 30px;
	background-color: #556069;
	color: white;
	border: 1px solid white;
}

.sungjinS {
	position: absolute;
	left: 63%;
	top: 205%
}

.discount2 {
	color: red;
}
</style>
<body>

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img
						src="${pageContext.request.contextPath}/resources/img/logo/logo.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->

	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header ">
				<div class="header-top top-bg d-none d-lg-block">
					<div class="container-fluid">
						<div class="col-xl-12">
							<div
								class="row d-flex justify-content-between align-items-center">
								<div class="header-info-left d-flex">
									<div class="flag">
										<img
											src="${pageContext.request.contextPath}/resources/img/icon/header_icon.png"
											alt="">
									</div>
									<div class="select-this">
										<form action="#">
											<div class="select-itms">
												<select name="select" id="select1">
													<option value="">USA</option>
													<option value="">SPN</option>
													<option value="">CDA</option>
													<option value="">USD</option>
												</select>
											</div>
										</form>
									</div>
									<ul class="contact-now">
										<li>+777 2345 7886</li>
									</ul>
								</div>
								<div class="header-info-right">
									<ul>
										<li><a href="login.html">My Account </a></li>
										<li><a href="product_list.html">Wish List </a></li>
										<li><a href="cart.html">Shopping</a></li>
										<li><a href="cart.html">Cart</a></li>
										<li><a href="checkout.html">Checkout</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="header-bottom  header-sticky">
					<div class="container-fluid">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-1 col-lg-1 col-md-1 col-sm-3">
								<div class="logo">
									<a href="index.html"><img
										src="${pageContext.request.contextPath}/resources/img/logo/logo.png"
										alt=""></a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-8 col-md-7 col-sm-5">
								<!-- Main-menu -->
								<div class="main-menu f-right d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a href="index.html">Home</a></li>
											<li><a href="Catagori.html">Catagori</a></li>
											<li class="hot"><a href="#">Latest</a>
												<ul class="submenu">
													<li><a href="product_list.html"> Product list</a></li>
													<li><a href="single-product.html"> Product Details</a></li>
												</ul></li>
											<li><a href="blog.html">Blog</a>
												<ul class="submenu">
													<li><a href="blog.html">Blog</a></li>
													<li><a href="single-blog.html">Blog Details</a></li>
												</ul></li>
											<li><a href="#">Pages</a>
												<ul class="submenu">
													<li><a href="login.html">Login</a></li>
													<li><a href="cart.html">Card</a></li>
													<li><a href="elements.html">Element</a></li>
													<li><a href="about.html">About</a></li>
													<li><a href="confirmation.html">Confirmation</a></li>
													<li><a href="cart.html">Shopping Cart</a></li>
													<li><a href="checkout.html">Product Checkout</a></li>
												</ul></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-xl-5 col-lg-3 col-md-3 col-sm-3 fix-card">
								<ul
									class="header-right f-right d-none d-lg-block d-flex justify-content-between">
									<li class="d-none d-xl-block">
										<div class="form-box f-right ">
											<input type="text" name="Search"
												placeholder="Search products">
											<div class="search-icon">
												<i class="fas fa-search special-tag"></i>
											</div>
										</div>
									</li>
									<li class=" d-none d-xl-block">
										<div class="favorit-items">
											<i class="far fa-heart"></i>
										</div>
									</li>
									<li>
										<div class="shopping-card">
											<a href="cart.html"><i class="fas fa-shopping-cart"></i></a>
										</div>
									</li>
									<li class="d-none d-lg-block"><a href="#"
										class="btn header-btn">Sign in</a></li>
								</ul>
							</div>
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>

	<main> <!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="${pageContext.request.contextPath}/resources/img/hero/category.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>운동물품 거래</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start -->
	<section class="latest-product-area latest-padding">
		<div class="container">
			<div class="row product-btn d-flex justify-content-between">
				<div class="properties__button">
					<!--Nav Button  -->
					<nav>
						<div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								href="${pageContext.request.contextPath}/DealA/list">경매
								거래</a> <a class="nav-item nav-link" id="nav-profile-tab"
								href="${pageContext.request.contextPath}/DealD/list">직거래</a>

						</div>
					</nav>
					<!--End Nav Button  -->
				</div>
				<div class="select-this d-flex">
					<div class="featured">
						<span>정렬 </span>
					</div>
					<form action="#">
						<div class="select-itms">
							<select name="select" id="select1">
								<option value="">최신순</option>
								<option value="">정확순</option>
								<option value="">조회순</option>
								<option value="">Featured C</option>
							</select>
						</div>
					</form>
				</div>
			</div>
			<!-- Nav Card -->

			<div class="tab-content" id="nav-tabContent">
				<!-- card one -->
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealA/detail"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<!-- 남은 시간 구하는 스크립트문 -->
						<script>
							var a = 2021

							var endTime = new Date(a, 08, 19, 15, 0, 0) / 1000;
							function setClock() {
								var elapsed = new Date() / 1000;
								var totalTime = endTime - elapsed;
								var hr = parseInt(totalTime / 3600)
								var min = parseInt(totalTime / 60) % 60;
								var sec = parseInt(totalTime % 60, 10);
								var result = hr + " 시 " + min + " 분 " + sec
										+ " 초";
								document.getElementById("time1").innerHTML = result;
								setTimeout(setClock, 1000);
							}
							setClock();
						</script>

						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">
	
								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/Mydeal/main"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealA/detail"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealA/detail"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealA/detail"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div id="timeback">
									<span class="fas fa-clock" /> <span id="time1"></span>
								</div>
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">
		
								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealA/detail"><b>바지
												팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>시작가</th>
												<td>1000원</td>
											</tr>
											<tr>
												<th class="discount2">현재가</th>
												<td class="discount2">3000원</td>
											</tr>
											<tr>
												<th>입찰횟수</th>
												<td>1회</td>
											</tr>
											<tr>
												<th>올린시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>


					</div>
					<hr>
					<div class="sungjinS">
						<div class="header-bottom ">
							<ul
								class="header-right f-right d-none d-lg-block d-flex justify-content-between">
								<li class="d-none d-xl-block" id="sd-none">
									<div class="form-box f-right ">
										<input type="text" name="Search" id="sinput"
											placeholder="Search products">
										<div class="search-icon">
											<i class="fas fa-search special-tag"></i>
										</div>
									</div>
								</li>

							</ul>

						</div>
					</div>

					<div id="write-b">
						<a href="${pageContext.request.contextPath}/DealA/write"
							class="btn header-btn">글쓰기</a>

					</div>
					<div class="pagination">
						<a href="#" id="paging">&laquo;</a> <a href="#" id="paging">1</a>
						<a href="#" id="paging">2</a> <a href="#" id="paging">3</a> <a
							href="#" id="paging">4</a> <a href="#" id="paging">5</a> <a
							href="#" id="paging">&raquo;</a>
					</div>

				</div>


			</div>
			<!-- End Nav Card -->
		</div>
	</section>


	> <!-- Latest Offers End --> <!-- Shop Method Start-->
	<div class="shop-method-area section-padding30">
		<div class="container">
			<div class="row d-flex justify-content-between">
				<div class="col-xl-3 col-lg-3 col-md-6">
					<div class="single-method mb-40">
						<i class="ti-package"></i>
						<h6>Free Shipping Method</h6>
						<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6">
					<div class="single-method mb-40">
						<i class="ti-unlock"></i>
						<h6>Secure Payment System</h6>
						<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6">
					<div class="single-method mb-40">
						<i class="ti-reload"></i>
						<h6>Secure Payment System</h6>
						<p>aorem ixpsacdolor sit ameasecur adipisicing elitsf edasd.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Method End--> <!-- Gallery Start-->
	<div class="gallery-wrapper lf-padding">
		<div class="gallery-area">
			<div class="container-fluid">
				<div class="row">
					<div class="gallery-items">
						<img
							src="${pageContext.request.contextPath}/resources/img/gallery/gallery1.jpg"
							alt="">
					</div>
					<div class="gallery-items">
						<img
							src="${pageContext.request.contextPath}/resources/img/gallery/gallery2.jpg"
							alt="">
					</div>
					<div class="gallery-items">
						<img
							src="${pageContext.request.contextPath}/resources/img/gallery/gallery3.jpg"
							alt="">
					</div>
					<div class="gallery-items">
						<img
							src="${pageContext.request.contextPath}/resources/img/gallery/gallery4.jpg"
							alt="">
					</div>
					<div class="gallery-items">
						<img
							src="${pageContext.request.contextPath}/resources/img/gallery/gallery5.jpg"
							alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Gallery End--> </main>
	<footer>
		<!-- Footer Start-->
		<div class="footer-area footer-padding">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="single-footer-caption mb-30">
								<!-- logo -->
								<div class="footer-logo">
									<a href="index.html"><img
										src="${pageContext.request.contextPath}/resources/img/logo/logo2_footer.png"
										alt=""></a>
								</div>
								<div class="footer-tittle">
									<div class="footer-pera">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit sed do eiusmod tempor incididunt ut labore.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Quick Links</h4>
								<ul>
									<li><a href="#">About</a></li>
									<li><a href="#"> Offers & Discounts</a></li>
									<li><a href="#"> Get Coupon</a></li>
									<li><a href="#"> Contact Us</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>New Products</h4>
								<ul>
									<li><a href="#">Woman Cloth</a></li>
									<li><a href="#">Fashion Accessories</a></li>
									<li><a href="#"> Man Accessories</a></li>
									<li><a href="#"> Rubber made Toys</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Support</h4>
								<ul>
									<li><a href="#">Frequently Asked Questions</a></li>
									<li><a href="#">Terms & Conditions</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Report a Payment Issue</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Footer bottom -->
				<div class="row">
					<div class="col-xl-7 col-lg-7 col-md-7">
						<div class="footer-copy-right">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="ti-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
					<div class="col-xl-5 col-lg-5 col-md-5">
						<div class="footer-copy-right f-right">
							<!-- social -->
							<div class="footer-social">
								<a href="#"><i class="fab fa-twitter"></i></a> <a href="#"><i
									class="fab fa-facebook-f"></i></a> <a href="#"><i
									class="fab fa-behance"></i></a> <a href="#"><i
									class="fas fa-globe"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer End-->
	</footer>

	<!-- JS here -->

	<!-- All JS Custom Plugins Link Here here -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>

	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>