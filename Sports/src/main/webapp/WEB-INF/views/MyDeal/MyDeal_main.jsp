<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>내거래 내역</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
<!-- Animation -->
<link rel="stylesheet" href="plugins/animate-css/animate.css">
<!-- slick Carousel -->
<link rel="stylesheet" href="plugins/slick/slick.css">
<link rel="stylesheet" href="plugins/slick/slick-theme.css">
<!-- Colorbox -->
<link rel="stylesheet" href="plugins/colorbox/colorbox.css">

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
label.file input {
	position: absolute;
	width: 0;
	overflow: hidden;
	opacity: 0;
}

label.file {
	width: 0%; /* Use for fluid design */
	min-width: 200px;
	height: 30px;
	line-height: 28px !important;
	cursor: pointer;
	position: relative;
	display: inline-block;
	white-space: nowrap;
	font-family: sans-serif;
	text-align: right;
}

label.file:before {
	content: "No file chosen";
	display: block;
	position: absolute;
	box-sizing: border-box;
	width: 100%;
	height: inherit;
	padding: 0 84px 0 10px;
	border: 0px solid #e8eeef;
	border-width: 2px 0px 2px 2px;
	border-radius: 3px 0 0 3px;
	background-color: #fff;
	color: #a0b7c5;
	font-size: 12px;
	overflow: hidden;
	text-overflow: ellipsis;
	text-align: center;
	vertical-align: middle;
}

label.file[title]:not ([title=""] ):before {
	content: attr(title);
	color: #162f44;
}

label.file:after {
	content: "BROWSE";
	display: inline-block;
	position: relative;
	box-sizing: border-box;
	width: 74px;
	height: inherit;
	padding: 0 4px;
	border-radius: 0 3px 3px 0;
	background-color: #a0b7c5;
	color: #fff;
	overflow: hidden;
	font-size: 9px;
	font-weight: bold;
	text-overflow: ellipsis;
	text-align: center;
	vertical-align: middle;
}


#table1 {
	padding-top: 100px
}
th{
	background-color:gray;
	color:white;
}
table{
	 border: 1px solid #444444;
}
th, td {
    border: 1px solid #444444;
    text-align :center;
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
							<h2>직거래 물품 상세</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start --> <!--바디부분 -->

	<div class="container">
		<div class="table-responsive" id = "table1">
			<h2> 구매현황</h2>
			<table class="table">
				<tr>
					<th>입찰중</th>
					<th>입찰완료</th>
					<th>입찰실패</th>
					<th>배송중</th>				
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>				
				</tr>
			</table>
		</div>
		
		<div class="table-responsive" id = "table1">
			<h2> 판매현황</h2>
			<table class="table">
				<tr>
					<th>입찰중</th>
					<th>입찰완료</th>
					<th>배송입력</th>
					
									
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
						
				</tr>
			</table>
		</div>
	</div>












	<!-- /teacher details --> <!-- Gallery End--> </main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>

	<!-- JS here -->

	<!-- All JS Custom Plugins Link Here here -->
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>

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