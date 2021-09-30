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
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
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
form {
  margin: 50px 0;
}

.form-check-inline {
  margin: 0 5px 10px 0;
}

[type=checkbox] {
  display: none;
}

.form-check-label {
  transition: all 144ms ease-in-out;
}
.form-check-label:hover {
  transform: scale(0.975);
}
.form-check-label::before {
  display: inline-block;
  margin-right: 2px;
  transition: transform 144ms ease-in-out;
  content: "+";
}

[type=checkbox]:not(:checked) + .form-check-label,
[type=checkbox]:not(:checked) + .form-check-label:hover {
  background-color: transparent;
  color: #363636;
  border-color: currentColor;
}

[type=checkbox]:checked + .form-check-label::before {
  transform: rotate(45deg);
}

pre code {
  display: block;
  margin: 2em 0;
  border-radius: 0.25rem;
  padding: 1em 2em;
  background: #33333f;
  color: ghostwhite;
}








input[type="radio"] {
    display: none;
}

input[type="radio"]:not(:disabled) ~ label {
    cursor: pointer;
}

input[type="radio"]:disabled ~ label {
    color: #bcc2bf;
    border-color: #bcc2bf;
    box-shadow: none;
    cursor: not-allowed;
}

label {
    height: 100%;
    display: block! important;
    background: white;
    border: 2px solid #2577fd;
    border-radius: 20px;
    padding: 1rem;
    margin-bottom: 1rem;
    text-align: center;
    box-shadow: 0px 3px 10px -2px rgba(161, 170, 166, 0.5);
    position: relative;
}

input[type="radio"]:checked + label {
    background: #2577fd;
    color: white;
    box-shadow: 0px 0px 20px rgba(0, 216, 255, 0.75);
}

input[type="radio"]:checked + label::after {
    color: #2577fd;
    font-family: FontAwesome;
    border: 2px solid #2577fd;
    content: "\f00c";
    font-size: 24px;
    position: absolute;
    top: -25px;
    left: 50%;
    transform: translateX(-50%);
    height: 50px;
    width: 50px;
    line-height: 50px;
    text-align: center;
    border-radius: 50%;
    background: white;
    box-shadow: 0px 2px 5px -2px rgba(0, 0, 0, 0.25);
}

input[type="radio"]#control_05:checked + label {
    background: red;
    border-color: red;
}

p {
    font-weight: 900;
}

@media only screen and (max-width: 700px) {
    section {
        flex-direction: column;
    }
}
#search_section .col{
    padding-right: 0px;
    padding-left: 0px;
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
						src="${pageContext.request.contextPath}/resources/image/logo/sports_logo.png"
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
			data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide03.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>운동 멘티/멘토 매칭</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> 
	
	<section id="search_section" style="padding-top: 70px;">	
		<div class="container">
			<div>300</div>명의 멘토가 검색되었습니다.
			<br>
			<br>
			<div class="row">
				<div class="col" data-toggle="modal" data-target="#addressModal">
				  <input type="radio" id="control_01" name="select" value="1" checked>
				  <label for="control_01">
				    <h2>수업지역</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_location.png">
				  </label>
				</div>
				<div class="col" data-toggle="modal" data-target="#subjectModal">
				  <input type="radio" id="control_02" name="select" value="2">
				  <label for="control_02">
				    <h2>전체과목</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_class.png">
				 </label>
				</div>
				<div class="col" data-toggle="modal" data-target="#paymentModal">
				  <input type="radio" id="control_03" name="select" value="3">
				  <label for="control_03">
				    <h2>전체수업료</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_payment.png">
				 </label>
				</div>
				<div class="col" data-toggle="modal" data-target="#genderModal">
				  <input type="radio" id="control_04" name="select" value="4">
				  <label for="control_04">
				    <h2>전체성별</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_sex.png">
				 </label>
				</div>
			</div>
		</div>
	</section>
	

	<!-- Latest Products Start -->
	<section class="latest-product-area latest-padding" style="padding-top: 70px;">
		<div class="container">
			<div class="row product-btn d-flex justify-content-between">
				<div class="properties__button">
					<!--Nav Button  -->
					<nav>
						<div class="nav nav-tabs" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								href="${pageContext.request.contextPath}/DealA/list">
								멘토 공고
							</a> 
							<a class="nav-item nav-link" id="nav-profile-tab"
								href="${pageContext.request.contextPath}/DealD/list">
								멘티 공고
							</a>
						</div>
					</nav>
					<!--End Nav Button  -->
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
	</main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
	                        <script>
                        	$('#sel1125 > p').click(function(){
                        		console.log($(this).text());
                        		$('#sel1125').css("display","none");
                        		$('#sel1126').text($(this).text());
                        	});
                        	
                        	
                        </script>
</body>
</html>