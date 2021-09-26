<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>직거래 글쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<style>
#paging {
	color: black;
}

.pagination {
	display: inline-block;
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

#fname, #lname {
	border-radius: 30px 30px 30px 30px;
}

/*파일 */
label.file input {position:absolute; width:0; overflow:hidden; opacity:0;}
label.file {
  width:0%; /* Use for fluid design */
  min-width:200px;
  height:30px;
  line-height:28px!important;
  cursor:pointer;
  position:relative;
  display:inline-block;
  white-space:nowrap;
  font-family:sans-serif;
  text-align:right;
}
label.file:before {
  content:"No file chosen";
  display:block;
  position:absolute;
  box-sizing:border-box;
  width:100%;
  height:inherit;
  padding:0 84px 0 10px;
  border:0px solid #e8eeef;
  border-width:2px 0px 2px 2px;
  border-radius:3px 0 0 3px;
  background-color:#fff;
  color:#a0b7c5;
  font-size:12px;
  overflow:hidden;
  text-overflow:ellipsis;
  text-align:center;
  vertical-align:middle;
}
label.file[title]:not([title=""]):before{
  content:attr(title);
  color:#162f44;
}
label.file:after {
  content:"BROWSE";
  display:inline-block;
  position:relative;
  box-sizing:border-box;
  width:74px;
  height:inherit;
  padding:0 4px;
  border-radius:0 3px 3px 0;
  background-color:#a0b7c5;
  color:#fff;
  overflow:hidden;
  font-size:9px;
  font-weight:bold;
  text-overflow:ellipsis;
  text-align:center;
  vertical-align:middle;
}

/* 라디오 */
.checkbox[type=checkbox], .checkbox[type=radio] {
	display: none;
}

label.input-label {
	display: inline-block;
	font-size: 13px;
	cursor: pointer;
}

label.input-label::before {
	display: inline-block;
	margin: 0 20px;
	font-family: FontAwesome;
	font-size: 20px;
	color: rgba(4, 120, 193, 0.2);
	-webkit-transition: transform 0.2s ease-out, color 0.2s ease;
	-moz-transition: transform 0.2s ease-out, color 0.2s ease;
	-ms-transition: transform 0.2s ease-out, color 0.2s ease;
	-o-transition: transform 0.2s ease-out, color 0.2s ease;
	transition: transform 0.2s ease-out, color 0.2s ease;
	-webkit-transform: scale3d(0.8, 0.8, 1);
	-moz-transform: scale3d(0.8, 0.8, 1);
	-ms-transform: scale3d(0.8, 0.8, 1);
	-o-transform: scale3d(0.8, 0.8, 1);
	transform: scale3d(0.8, 0.8, 1);
}

label.input-label.checkbox::before {
	content: "\f0c8";
}

label.input-label.radio::before {
	content: "\f111";
}

input.checkbox+label.input-label:hover::before {
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox+label.input-label:active::before {
	-webkit-transform: scale3d(1.5, 1.5, 1);
	-moz-transform: scale3d(1.5, 1.5, 1);
	-ms-transform: scale3d(1.5, 1.5, 1);
	-o-transform: scale3d(1.5, 1.5, 1);
	transform: scale3d(1.5, 1.5, 1);
}

input.checkbox:checked+label.input-label::before {
	display: inline-block;
	font-family: FontAwesome;
	color: #0478c1;
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox:checked+label.input-label.checkbox::before {
	content: "\f14a";
}

input.checkbox:checked+label.input-label.radio::before {
	content: "\f058";
}
</style>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="${pageContext.request.contextPath}/resources/img/logo/logo.png" alt="">
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
										<img src="${pageContext.request.contextPath}/resources/img/icon/header_icon.png" alt="">
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
									<a href="index.html"><img src="${pageContext.request.contextPath}/resources/img/logo/logo.png"
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
							<h2>직 거래 글쓰기</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start -->









		<div class="site-section bg-light">
			<div class="container">
				<div class="row">

					<div class="col-lg-12">
						<div class="section-title mb-5">
							<h2>
								<b>Write</b>
							</h2>

						</div>
						<form method="post">

							<div class="row">
								<div class="col-md-4 form-group">
									<label for="fname">제목</label> <input type="text" id="fname"
										class="form-control form-control-lg" style="width: 1000px"
										placeholder="제목을 입력하세요.....">
								</div>

							</div>


							<div class="row">
								<div class="col-md-6 form-group">
									<label for="lname">금액</label><br> <input type="text"
										id="lname" class="form-control" style="width: 200px"
										placeholder="금액 입력 .. ">
								</div>
								<div class="col-md-6 form-group">
									<label for="lname">전화번호</label><br> <input type="text"
										id="lname" class="form-control" style="width: 200px"
										placeholder="010-xxxx-xxxx ">
								</div>

							</div>
							<div class="row">
								<div class="col-md-4 form-group">
									<label for="fname">거래장소</label> <input type="text" id="fname"
										class="form-control form-control-lg" style="width: 1000px"
										placeholder="종로3가역 3번출구앞 ....">
								</div>

							</div>


							<div class="row">
								<div class="col-md-11 form-group">
									<label for="message">내용</label>
									<textarea name="" id="message" cols="30" rows="10"
										class="form-control" placeholder="내용 입력 .. "></textarea>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="message">사진 첨부</label><br> <label class="file"
										title=""><input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))" /></label>
								</div>
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title=""><input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))" /></label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title=""><input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))" /></label>
								</div>
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title=""><input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))" /></label>
								</div>
							</div>
							<hr>
							<br> <br> <br>
							<div class="container">
								<div class="row" style="text-align: center">
									<div class="col-11">
										<input type="submit" value="Submit"
											class="btn btn-primary py-3 px-5"
											style="background-color: black; height: 50px"> &emsp;
										<input type="submit" value="Cancel"
											class="btn btn-primary py-3 px-5"
											style="background-color: gray; height: 50px">
									</div>
									<br> <br> <br> <br> <br> <br> <br>

								</div>
							</div>


						</form>
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
										src="assets/img/logo/logo2_footer.png" alt=""></a>
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
	<script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>

	<!-- Jquery, Popper, Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>