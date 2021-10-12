<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>당일 운동량</title>
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
#sports_img {
	border-radius: 70%;
}
.add{
	text-transform: capitalize;
	background-color: rgb(10 23 92);
    cursor: pointer;
    display: inline-block;
    font-size: 18px;
    font-weight: 400;
    letter-spacing: 1px;
    line-height: 0;
    margin-bottom: 0;
    padding: 22px 20px 19px 18px;
    border-radius: 25px;
    margin-left: 10px;
    cursor: pointer;
    transition: color 0.4s linear;
    position: relative;
    z-index: 1;
    border: 0;
    overflow: hidden;
    margin: 0;
}
#sports_name{
background-color: #fbfcfd
}
#time{
background-color: #fbfcfd
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
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/personalmanagement/sports.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2></h2>
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
		</div>
		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
			<div id="daten"> Date</div>
		</div>
	</div>
	<div class="row">
     <div class="col-md-2">
        <!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
		<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
     </div>
<!-- 당일 운동 -->
	<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
	<div class="container">
                  <div class="add-items d-flex col-md-6">
                   <div class="select">
                    <select class="form-control sports_name" id="sports_name" name="sports_name">
                     <option selected value="">-- 선택 --</option>
                    </select>
                   </div>
                   <div class="input">
		           <input type="text" id="time" name="SPORTS_TIME" class="form-control SPORTS_TIME" placeholder="운동시간 ">
                   </div>
                   <button class="add" id="add">Add</button> 	
                 </div> 
				<!-- Recently Favorited -->
				<div style="width:50%" class="widget dashboard-container my-adslist" id="kcal_list">
					<h3 class="widget-header">당일 운동량</h3>
					<table class="table table-responsive product-dashboard-table table-striped">
						<thead>
							<tr>
								<th width="20%">운동종목</th>
								<th></th>
								<th width="30%"  colspan="1"></th>
								<th width="25%" class="text-center">칼로리</th>
								<th width="25%" class="text-center" >삭제</th>
							</tr>
						</thead>
						<tbody>
							
						</tbody>
					</table>
					
				<div class="center-block">
		  <ul class="pagination justify-content-center">		
			 <c:if test="${page <= 1 }">
				<li class="page-item">
				  <a class="page-link gray">이전&nbsp;</a>
				</li>
			 </c:if>
			 <c:if test="${page > 1 }">			
				<li class="page-item">
				   <a href="list?page=${page-1}" 
				      class="page-link">이전&nbsp;</a>
				</li> 
			 </c:if>
					
			<c:forEach var="a" begin="${startpage}" end="${endpage}">
				<c:if test="${a == page }">
					<li class="page-item " >
					   <a class="page-link gray">${a}</a>
					</li>
				</c:if>
				<c:if test="${a != page }">
				    <li class="page-item">
					   <a href="list?page=${a}" 
					      class="page-link">${a}</a>
				    </li>	
				</c:if>
			</c:forEach>
			
			<c:if test="${page >= maxpage }">
				<li class="page-item">
				   <a class="page-link gray">&nbsp;다음</a> 
				</li>
			</c:if>
			<c:if test="${page < maxpage }">
			  <li class="page-item">
				<a href="list?page=${page+1}" 
				   class="page-link">&nbsp;다음</a>
			  </li>	
			</c:if>
		 </ul>
		</div>
				</div>
			</div>
		</div>
	</div>
<!-- Row End -->
<!-- Container End -->
</section>
</body>

	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>