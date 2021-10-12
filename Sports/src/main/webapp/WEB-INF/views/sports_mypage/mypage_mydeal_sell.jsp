<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="https://unpkg.com/feather-icons"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/weather.css">
<script src="${pageContext.request.contextPath}/resources/js/weather.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/Dealstyle.css">
</head>
<style>
#aa {
	float: left;
	color: black;
	font-weight: bold;
	font-size: 25px
}

#aa.hover {
	color: white;
}

#sele {
	float: right;
}

#delimg {
	color: red
}
</style>
<body>


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
							<h2>내 거래 내역 (판매현황)</h2>
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
			<div class="col-lg-1">
				
			</div>
			<div class="col-lg-6">
				<form action="list">

					<div class="header-bottom ">
						<ul
							class="header-right f-right d-none d-lg-block d-flex justify-content-between">
							<li class="d-none d-xl-block" id="sd-none"><select
								style="position: relative;" id="viewcount" name="search_field">
									<option value="0" selected>입찰중</option>
									<option value="1">입찰완료</option>
									<option value="2">배송입력</option>
							</select>
								<div style="width: 70%" class="form-box f-right"></div></li>
						</ul>
					</div>

				</form>
				<!-- end section -->

				<table class="table">
					<thead>
						<tr>
							<th colspan="6"><font size=3>글 개수 : ${listcount}</font></th>
						</tr>
						<tr>
							<th><div>아이디</div></th>
							<th><div>제목</div></th>
							<th><div>시작금액</div></th>
							<th><div>현재금액</div></th>
							<th><div>즉시구매가</div></th>
							<th><div>경매기간</div></th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>
								<%--번호 --%> admin
							</td>
							<td><div>제목</div></td>
							<td>
								<%--제목 --%>
								<div>1000원</div>
							</td>
							<td><div>5000원</div></td>
							<td><div>10000원</div></td>
							<td><div>2021~10.15</div></td>
						</tr>
						<tr>
							<td>
								<%--번호 --%> admin
							</td>
							<td><div>제목</div></td>
							<td>
								<%--제목 --%>
								<div>1000원</div>
							</td>
							<td><div>5000원</div></td>
							<td><div>10000원</div></td>
							<td><div>2021~10.15</div></td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>

	</section>

	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp" />

</body>
</html>