<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- SITE TITTLE -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/personal_management/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/personal_management/bootstrap/css/bootstrap-slider.css">
  <!-- Font Awesome -->
  <link href="${pageContext.request.contextPath}/resources/personal_management/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- Owl Carousel -->
  <link href="${pageContext.request.contextPath}/resources/personal_management/slick-carousel/slick/slick.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/personal_management/slick-carousel/slick/slick-theme.css" rel="stylesheet">
  <!-- Fancy Box -->
  <link href="${pageContext.request.contextPath}/resources/personal_management/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/personal_management/jquery-nice-select/css/nice-select.css" rel="stylesheet">
  <!-- CUSTOM CSS -->
  <link href="${pageContext.request.contextPath}/resources/personal_management/css/style.css" rel="stylesheet">
  		
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/personal_management/pm.js" charset="utf-8"></script> 		
		<script src="${pageContext.request.contextPath}/resources/js/personal_management/date.js" charset="utf-8"></script> 		
		<jsp:include page="/WEB-INF/views/sports_management/pmlink.jsp"/>
<style>
#daten {
  padding-bottom:1em;
  font-weight:900;
  font-size:3em;  
  letter-spacing:0.1em;
  color:black;
  text-align:center;
}

</style>
</head>

<body class="body-wrapper">
    
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
    <!-- Preloader end-->

  	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	
    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/personalmanagement/board_headline.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>운동 칼로리 계산 및 물 섭취량</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

<section class="blog_area section-padding">
	<div class="row">
     <div class="col-md-2">
        <!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
		<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
     </div>
<!-- 당일 운동 -->



	
	<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
	<div class="container">
	 <div id="daten"> Date</div>
				<h4 class="card-title">당일 운동 종목</h4>
                  <div class="add-items d-flex">
                   <select class="form-control sports_name" id="sports_name" name="sports_name">
                    <option selected value="">-- 선택 --</option>
                   </select>
		           <input type="text" id="time" name="SPORTS_TIME" class="form-control SPORTS_TIME" placeholder="운동시간 ">
                   <button class="add btn btn-primary font-weight-bold add-btn">Add</button> 	
                 </div> 
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-adslist" id="kcal_list">
					<table class="table table-responsive product-dashboard-table">
						<thead>
							<tr>
								<th>운동 종목</th>
								<th colspan="1"></th>
								<th class="text-center">칼로리</th>
								<th class="text-center">삭제</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
						<div id="message"></div>
				</div>
			</div>
		</div>
	</div>
<!-- Row End -->
<!-- Container End -->
</section>

</body>






<!-- <div class="col-lg-10 mb-5 mb-lg-0">
   <div class="page-content page-container" id="page-content">
    <div class="padding">  // 왼쪽 공백 
   <div id="daten"> Date</div>
       <div class="col-md-4">
          <div class="card px-3">
              <div class="card-body">
                <h4 class="card-title">당일 운동 종목</h4>
                  <div class="add-items d-flex"> 
                   <select class="form-control sports_name" id="sports_name" name="sports_name">
                    <option selected value="">-- 선택 --</option>
                   </select>
		           <input type="text" id="time" name="SPORTS_TIME" class="form-control SPORTS_TIME" placeholder="운동시간 ">
                   <button class="add btn btn-primary font-weight-bold add-btn">Add</button> 	
                 </div>
                 <div class="list-wrapper">
                    <ul class="d-flex flex-column-reverse kcal-list" id="kcal_list"></ul>
                 </div>
               </div>
            </div>
         </div>
    </div>
</section> -->
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>