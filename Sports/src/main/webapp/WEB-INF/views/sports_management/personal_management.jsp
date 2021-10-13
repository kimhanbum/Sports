<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>당일 운동량</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
#wateradd{
	text-transform: capitalize;
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
</style>
</head>

<body class="body-wrapper" id="page-top">
    
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
	<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0 d-flex">
	<div class="container">
                  <div class="add-items">
                  <div class="input-group">
                    <select class="form-control sports_name" id="sports_name" name="sports_name">
                     <option selected value="">-- 선택 --</option>
                    </select>
		           <input type="text" id="time" name="SPORTS_TIME" class="form-control SPORTS_TIME" placeholder="운동시간 ">
                   <button class="add" id="add">Add</button>
                   </div> 	
                 </div> 
				<!-- Recently Favorited -->
				<div class="widget dashboard-container my-adslist" id="kcal_list">
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
				<!-- Row End -->
<!-- Container End -->

		<!-- Donut Chart -->
  <div class="col-md-4 col-lg-5 float-right">
    <div class="card shadow mb-4">
     <!-- Card Header - Dropdown -->
      <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">목표물섭취량: ${goaldata}L</h6>
      </div>

      <!-- Card Body -->
    <div class="container">
	  <div class="row">
		<div class="col-md-12">
			<canvas id ="myChart">
			</canvas>
			<input type="hidden" id="goaldata" name="goaldata" value="${goaldata}">
			<input type="text" id="title" name="title"><button class="btn" id="wateradd">입력</button>
		</div>
	  </div>
	</div>
				
<script>
//ajax로 값을 가져와요
// [{label:""물섭취량""}]
function getDoughnut(goaldata, title){		
	
	var ctx = $("#myChart");
	//var doughnutLabels = ["목표물섭취량", "내 섭취량"];
	//var doughnutdata = [100, 70];
	 doughnutChart = new Chart(ctx,{
		type : 'doughnut', //pie, line, doughnut, polarArea
		data: {
			labels : ["목표 물 섭취량", "내 섭취량"],//doughnutLabels,	
			datasets : [{
				data : [
					goaldata,
					title
					],
				backgroundColor: ['#4e73df', '#1cc88a'],
				hoverBackgroundColor: ['#2e59d9', '#17a673'],
				hoverBorderColor: "rgba(234, 236)",
			}],
		},
		options:{
			cutoutPercentage: 90
		}
	});
	
	}
	var goaldata = '${goaldata}';
	var title = '${title}';
		
	getDoughnut(goaldata, title);
	

	$("#wateradd").click(function(){
		  $.ajax({	
				type: "post",
				url : "${pageContext.request.contextPath}/pm/wateradd",
				data:{
					goaldata: $("#goaldata").val(),
					title : $("#title").val()
				},
				success: function(rdata){
					console.log("성공");
					doughnutChart.destroy();
					getDoughnut(rdata.goaldata, rdata.title);
				}
			})
	})
</script>
			</div>
		</div>
	</div>


</section>
</body>

	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>