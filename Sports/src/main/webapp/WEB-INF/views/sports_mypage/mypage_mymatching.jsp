<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>MyPage</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/match/mymatching.css">
</head>
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/match/mymatch.js"></script>
<style>
#Register, #Apply ,#Deadline {
	float: left;
	color: black;
	font-weight: bold;
	font-size: 25px
}



#view{
	float:right;
}
#delimg{
	color:red
}
</style>
<body>
<div id="user_id" style="display:none;">${USER_ID}</div>

	<!-- Preloader Start-->

	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp" />

	<!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="${pageContext.request.contextPath}/resources/img/hero/category.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>내 매칭 정보</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End-->

	<section class="blog_area section-padding">
		<div class="row">
			<div class="col-lg-2">
				<!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
				<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp" />
			</div>
			<div class="col-lg-8">
				<div class="section lb">
					<div class="container">
						<div class="section-title text-center">

							<div class="dmoain-pricing">
								<div class="table-responsive-sm">
									 <a id="Apply" href="#">
									 <i class="fas fa-running" 
									
									></i>&nbsp;&nbsp;등록 매칭</a> <br>
									
									<table>
										<thead>
											<tr class="domain-head">
												<th scope="col">스포츠</th>
												<th scope="col">지역</th>
												<th scope="col">세부지역</th>
												<th scope="col">날짜</th>
												<th scope="col">인원</th>
												<th scope="col">실력</th>
												<th scope="col">상태</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><div class="classalign">${USER_ID}</div></td>
												<td><div class="classalign">${MATCH_DTL_ADR}</div></td>	
												<td><div class="classalign">${MATCH_TIME}</div></td>
												<td><div class="classalign">${MATCH_PRS}</div></td>
												<td><div class="classalign">${MATCH_SKL}</div></td>
											</tr>

										</tbody>
									</table>

								</div>
							</div>
							<hr>
							<br>
							<br>

							<div class="dmoain-pricing">
								<div class="table-responsive-sm">
									<a id="Register" 
									href="#"
									><i class="fas fa-running"></i>&nbsp;&nbsp;신청 매칭</a> <br>
									<br>
									<table>
										<thead>
											<tr class="domain-head">
												<th scope="col">스포츠</th>
												<th scope="col">지역</th>
												<th scope="col">세부지역</th>
												<th scope="col">날짜</th>
												<th scope="col">인원</th>
												<th scope="col">실력</th>
												<th scope="col">상태</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td data-label="DOMAIN NAME">${SELL_BIDDING}</td>
												<td data-label="registration pricing">${SELL_BIDCOM}</td>
												<td data-label="renewal pricing">${SELL_DELIVERY}</td>
												<td data-label="transfer-price"></td>
											</tr>

										</tbody>
									</table>

								</div>
							</div>
							<hr><br><br><br>
							<div class="dmoain-pricing">
								<div class="table-responsive-sm">
									<a id="Deadline"><i class="fas fa-running"></i>
									&nbsp;마감 매칭</a> 
									<table>
										<thead>
											<tr class="domain-head">
												<th scope="col">스포츠</th>
												<th scope="col">지역</th>
												<th scope="col">세부지역</th>
												<th scope="col">날짜</th>
												<th scope="col">인원</th>
												<th scope="col">실력</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="b" items="${Direct}">
											<tr>
												<td data-label="DOMAIN NAME">${b.DIR_NUMBER }</td>
												<td data-label="DOMAIN NAME">
												<a href="${pageContext.request.contextPath}
										/DealD/detail?num=${b.DIR_NUMBER}">${b.DIR_SUBJECT }</a></td>
												<td data-label="registration pricing">${b.DIR_ADDRESS }</td>
												<td data-label="renewal pricing">${b.DIR_PHONE }</td>
												<td data-label="transfer-price">${b.DIR_DATE }</td>
											
												<td data-label="transfer-price">${b.USER_ID }&nbsp;
												<span id ="delimg"><a href =
												"${pageContext.request.contextPath}
										/Mydeal/delete2?num=${b.DIR_NUMBER}"><i class="far fa-trash-alt"></i></a></span></td>
											</tr>
										</c:forEach>

										</tbody>
									</table>

								</div>
							</div>
						</div>
						<!-- end title -->
					</div>
					<!-- end container -->
				</div>
				<!-- end section -->
			</div>
		</div>

	</section>
	<script>
	$(function() {
		
		$("#view").change(function() { //최신순, 등록순, 조회순 변경 시
			var view = $("#view").val();
			
			if(view=="1"){
				location.href="main";
			}else{
				location.href="main2"
			}
			
			
		})
		
	})
	</script>

	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp" />

</body>
</html>