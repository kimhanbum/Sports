<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  		<meta charset="UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>MyPage</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- <link rel="manifest" href="site.webmanifest"> -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
		<link rel="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<link rel="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
		<link rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
		<link rel="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		<link rel='stylesheet' href='${pageContext.request.contextPath}/resources/css/personal_management/pm.css'/>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/personal_management/pm.js" charset="utf-8"></script> 		
		
<style>

</style>
</head>

<body>
    
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
     <div class="col-lg-2">
        <!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
		<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
     </div>
<!-- 당일 운동 -->
<div class="col-lg-10 mb-5 mb-lg-0">
   <div class="page-content page-container" id="page-content">
   <!--  <div class="padding">  // 왼쪽 공백--> 
       <div class="col-md-6">
       <!--    <div class="card px-3">
              <div class="card-body"> -->
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
 <!--    </div> -->
</div>
</div>
</section>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>