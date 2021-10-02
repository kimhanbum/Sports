<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script src = "http://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
#paging {
	color: black;
}

.pagination {
	position: absolute;
	left: 43%;
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
							<select name="select" id="view">
								<option value="1" selected>최신순</option>
								<option value="2">정확순</option>
								<option value="3">조회순</option>
								<option value="4">금액순</option>
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
						<c:forEach var="b" items="${Direct}">
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60">
								<div class="product-img">
									<img
										src="${pageContext.request.contextPath}/resources/dealupload2/${b.SAVE_DIR_MAINFILE}"
										alt="" style="width: 300px; height: 250px;">

								</div>
								<div class="product-caption">

									<h4>
										<a href="${pageContext.request.contextPath}/DealD/detail?num=${b.DIR_NUMBER}">
										<b>${b.DIR_SUBJECT}</b></a>
									</h4>
									<div class="price">
										<table class="table">
											<tr>
												<th>금액</th>
												<td>${b.DIR_PRICE}원</td>

											</tr>
											<tr>
												<th>거래지역</th>
												<td>${b.DIR_ADDRESS}</td>
											</tr>
											<tr>
												<th>올리시간</th>
												<td>${b.DIR_DATE}</td>
											</tr>
											<tr>
												<th>조회수</th>
												<td>${b.DIR_READCOUNT}</td>
											</tr>

										</table>

									</div>
								</div>
							</div>
						</div>
						</c:forEach>


	

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
							 <form  method="get" action="list" name="form1" id ="form1">
								<input type="text" name="search" id="search"
									placeholder="Search products" >
							
								<div class="search-icon">
									<i onclick="SubmitForm()" class="fas fa-search special-tag" id ="searchB"></i>
								</div>
							</form>
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
			<c:if test="${page <= 1 }">
				 <a id="paging">&laquo;</a>
			
			 </c:if>
			<c:if test="${page > 1 }">			
				<a href="list?page=${page-1}" id="paging">&laquo;</a>
			 </c:if>
				
				<c:forEach var="a" begin="${startpage}" end="${endpage}">
				 
				 <c:if test="${a == page }">
				 	<a href="#" id="paging">${a}</a>
				 </c:if>
				 <c:if test="${a != page }">
					  <a href="list?page=${a}" id="paging">${a}</a>	
				</c:if> 
				</c:forEach> 
			<c:if test="${page >= maxpage }">				
				  <a id="paging">&raquo;</a> 
			</c:if>
			<c:if test="${page < maxpage }">
				<a href="list?page=${page+1}"
				  id="paging">&raquo;</a>
			</c:if>
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
		<script>
		 function SubmitForm()
	        {

	            form1.submit();
	        }
		 function go(page) {
			var view = $("#view").val(); //최신순부터 값은 1~3
			
			 var data = "view=" + view + "&state=ajax";
			console.log(view)
			console.log(page)
				
			console.log(data)
			ajax(data);
		}
		 $(function() {
			$("#view").change(function(){ //최신순, 등록순, 조회순 변경 시
			go(1);
		
			})
		 })
		 
		 function ajax(sdata){
			 console.log(sdata)
			 output = "";
			 $.ajax({
				type : "get",
				url : "list",
				dataType : "json",
				success : function(data){
					console.log("성공");
				},
				error : function(request, status, error){
					console.log( request.status  + 
	             			 + "받은 데이터 :" + request.responseText  +
	             			 + "error status : " + status +
	             	         + "error 메시지 : " + error)

                 }//error end

			 	
			 })
		 }
		 
		 
	</script>
	<!-- Gallery End--> </main>
	<!-- Footer 영역  -->

	<jsp:include page="/WEB-INF/views/sport_comm/footer2.jsp"/>

	<!-- JS here -->


</body>
</html>