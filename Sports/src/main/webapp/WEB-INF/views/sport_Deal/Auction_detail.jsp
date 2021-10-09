<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>경매 물품 상세</title>
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
<script src = "http://code.jquery.com/jquery-latest.js"></script>
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

.buttonA {
	width: 200px;
	height: 60px;
	font-family: 'Roboto', sans-serif;
	font-size: 17px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: white;
	background-color: #114da5;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}
.buttonE{
	width: 200px;
	height: 60px;
	font-family: 'Roboto', sans-serif;
	font-size: 17px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: white;
	background-color: #afafaf;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;

}
.buttonJ{
	width: 200px;
	height: 60px;
	font-family: 'Roboto', sans-serif;
	font-size: 17px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: white;
	background-color: #b3a586;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.buttonA:hover{
	background-color: #1c72f0;
	box-shadow: 0px 15px 20px #1c72f0;
	color: #fff;
	transform: translateY(-7px);
}
.buttonE:hover {
	background-color: #e8e3e3;
	box-shadow: 0px 15px 20px #e8e3e3;
	color: #fff;
	transform: translateY(-7px);
}
.buttonJ:hover{
	background-color: #e6d5af;
	box-shadow: 0px 15px 20px #e6d5af;
	color: #fff;
	transform: translateY(-7px);
}


#mainpic {
	padding-top: 100px
}

#buttonG {
	padding-top: 40px
}

#zzim {
	padding-top: 50px
}

#mon2 {
	padding-top: 50px
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
					<img src="${pageContext.request.contextPath}/resources/image/logo/sports_logo.png" alt="">
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
							<h2>경매 물품 상세</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start --> <!--바디부분 -->
	<section class="section">
		<div class="container" id="mainpic">
			<h3><b>제목</b></h3>
			<h6 class="text-color">Computer Science</h6>
			<span>Lorem ipsum dolor, sit amet consectetur
				adipisicing elit. Cumque ac voluptas quae.</span>
				<div style="text-align:right"><b>조회수</b>&emsp;${b.AUC_READCOUNT}</div>
				<hr>
			<div class="row">
				<div class="col-md-5 mb-5">
					<img class="img-fluid w-100" src="${pageContext.request.contextPath}/resources/
					dealupload1/${b.SAVE_AUC_MAINFILE}"
						alt="teacher" style="width: 600px; height: 500px;">
				</div>
				<div class="col-md-6 mb-5" id="subject">
					<div class="row">
						<div class="col-md-6 mb-5 mb-md-0">
							<h4 class="mb-4">Auction Info</h4>
							<hr>
							<ul class="list-unstyled">
								<li><b>경매기간</b>&emsp;${b.AUC_DATE}
							
									<hr></li>
								<li><b>입찰단위</b>&emsp;${b.AUC_UNIT}
									<hr></li>
								<li><b>시작가</b>&emsp;&emsp;${b.AUC_SPRICE}
									<hr></li>
								<li><b>현재가</b>&emsp;&emsp;${b.AUC_PRICE}
									<hr></li>
								<li><b>즉시구매</b>&emsp;${b.AUC_LPRICE}
									<hr></li>
								<li><b>입찰수</b>&emsp;&emsp;${b.AUC_COUNT}
									<hr></li>
								<li><b>배송방법</b>&emsp;${b.AUC_DELIVERY}
									<hr></li>
								<li><b>아이디</b>&emsp;&emsp;${b.USER_ID}
									<hr></li>
							</ul>
						</div>
						<div class="col-md-6">
							<h4 class="mb-4">Button Group</h4>
							<hr>
							<ul class="list-unstyled" id="buttonG">
								<li class="mb-3">
									<button class="buttonA">입찰하기</button>
								</li>
								<li class="mb-3" id="zzim">
									<button class="buttonJ">찜하기</button>
								</li>
								<li class="mb-3" id="mon2">
									<button class="buttonE">문의하기</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-12">
					<h4 class="mb-4"><b>글 내용</b></h4>
					<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
						exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate
						velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
						occaecat cupidatat non proident, sunt in culpa qui officia
						deserunt mollit anim id est laborum. Sed ut perspiciatis unde
						omnis iste natus error sit voluptatem accusantium doloremque
						laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
						veritatis et quasi architecto.</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-12">
					<h4 class="mb-4"><b>서브사진</b></h4>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-sm-6 mb-5">
					<div>
					<c:choose>
							<c:when test="${b.SAVE_AUC_FILE2=='0'}">
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload2/white.jpg"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:when>
							<c:otherwise>
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload1/${b.SAVE_AUC_FILE2}"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:otherwise>
						</c:choose>
						</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-sm-6 mb-5">
					<div>
					<c:choose>
							<c:when test="${b.SAVE_AUC_FILE3=='0'}">
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload2/white.jpg"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:when>
							<c:otherwise>
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload1/${b.SAVE_AUC_FILE3}"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:otherwise>
						</c:choose>
						</div>
				</div>
				<!-- course item -->
				<div class="col-lg-4 col-sm-6 mb-5">
					<div>
					<c:choose>
							<c:when test="${b.SAVE_AUC_FILE4=='0'}">
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload2/white.jpg"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:when>
							<c:otherwise>
								<img class="card-img-top rounded-0"
									src="${pageContext.request.contextPath}/resources/dealupload1/${b.SAVE_AUC_FILE4}"
									alt="course thumb" style="width: 358px; height: 300px;">
							</c:otherwise>
						</c:choose>
						</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /teacher details --> <!-- Gallery End--> </main>
	
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer2.jsp"/>
	<script>
	$(function(){
		$(".buttonJ").click(function(){ //찜하기 버튼 클릭
			
			var pickcheck ="${pickcheck}";
 			var num = ${param.num};
 			
 			var writeid = "${b.USER_ID}"
				var sessionid = "${USER_ID}"
 			
				
			if(sessionid ==""){
				alert("로그인후 이용해주세요")
				location.href = "${pageContext.request.contextPath}/member/login"
			}else{
				if(writeid==sessionid){
					alert("본인이 올린글 입니다.")
				}else{
					if(pickcheck == "possible"){
		 				var b = confirm("찜 하시겠습니까 ?");		
		 				
		 				if(b==true){	
		 					location.href = "${pageContext.request.contextPath}/DealA/pick"
		 					 + "?num=" + num ;
		 				}
		 			}else{
		 				alert("이미 찜한 상품입니다.")
		 			}
				}
			}
				
 			

		})
	})
	
	</script>
	<script>
		$(function(){
			$(".buttonA").click(function(){ //로그인창에서 회원가입버튼 클릭 시
				var num = ${param.num};
				var bidcheck ="${bidcheck}";
				
				var writeid = "${b.USER_ID}"
				var sessionid = "${USER_ID}"
				
				console.log("aa" + bidcheck);
				
				if(sessionid ==""){
					alert("로그인후 이용해주세요")
					location.href = "${pageContext.request.contextPath}/member/login"
				}else{
					if(writeid==sessionid){
						alert("본인이 올린글 입니다.")
					}else{
						if(bidcheck == "possible"){
							var b = confirm("입찰 하시겠습니까 ? (입찰단위: " + ${b.AUC_UNIT} + ")");		
							
							if(b==true){	
								location.href = "${pageContext.request.contextPath}/DealA/bid"
								 + "?num=" + num ;
								
							}
						}else{
							alert("입찰중인 물품입니다.")
						}
					}
				}
				
				
				
		     });
			
		})
	
	</script>

	<!-- JS here -->

	<!-- All JS Custom Plugins Link Here here -->
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>

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