<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>직거래 메인</title>
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
	top: 190%
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

	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>

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
							<a class="nav-item nav-link " id="nav-home-tab"
								href="${pageContext.request.contextPath}/DealA/list">경매
								거래</a> <a class="nav-item nav-link active" id="nav-profile-tab"
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
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealD/detail"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>



						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="#"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="#"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="#"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="#"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/img/categori/product1.png"
										alt="">

								</div>
								<div class="product-caption">

									<h4>
										<a href="#"><b>바지 팝니다(급처)</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>1000원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>지행역</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>09-22</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						<div class="container" id="paging">
							<!-- Latest Products End -->
							<!-- Latest Offers Start -->

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
				<a href="${pageContext.request.contextPath}/DealD/write"
					class="btn header-btn">글쓰기</a>

			</div>
			<div class="pagination">
				<a href="#" id="paging">&laquo;</a> <a href="#" id="paging">1</a> <a
					href="#" id="paging">2</a> <a href="#" id="paging">3</a> <a
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
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>

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