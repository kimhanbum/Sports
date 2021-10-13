<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>내 신청 리스트</title>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mmatch/mmwriteList.css">
<style>
tbody>tr>td:nth-child(1){
	text-align:center;
	width:10%;
}
tbody>tr>td:nth-child(2){
	width:25%;
}
tbody>tr>td:nth-child(3){
	text-align:center;
	width:25%;
}
tbody>tr>td:nth-child(4){
	text-align:center;
	width:20%;
}
</style>
</head>
<body>
  	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	
    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/mmatch/mypage_mmapply.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>내 신청(멘토글) 리스트</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

    <section class="section-padding">
       <div class="row">
            <div class="col-lg-2">
            	<!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
				<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
            </div>
            <div class="col-lg-9 mb-5 mb-lg-0">
                <article>
					<div class="article_container">
						<table style='min-width: 0px !important;' class="table table-borderless">
							<thead>
								<tr>
								  <th colspan="3">
								  	<h5>내 신청(멘토 글)리스트 <span id="writingcount">${listcount}</span></h5>
								  </th> 
								  <th colspan="2" style="text-align:right">
									<select id="mmSelect" class="form-control1">
          							  <option value="멘토" selected>멘토글 신청</option>
          							  <option value="멘티">멘티글 신청</option>
                					</select>
								  </th>
								</tr>
								<tr>
								  <th style="background:#dcdcdc;" colspan="5">
									<div style="height:38px"class="d-flex flex-row-reverse">
									<%-- <img id="searchDiet" class="p-2" src="${pageContext.request.contextPath}/resources/image/mmatch/search.png" width="40px" height="40px" alt="search">
									<input id="searchText" class="p-2" type="text" placeholder="검색어 입력하세요" required maxlength="12">
									 --%>
									</div>
								  </th>
								</tr>
							</thead>
							<tbody>
							<c:if test="${listcount > 0 }">
								<c:forEach var="apply" items="${applylist}">
									<tr>
			  							<td><div>${apply.sports_name}</div></td>
			  							<td><div>${apply.mentor_title}</div></td>
										<td colspan="2">신청 현황 : 
											<c:choose>
												 <c:when test="${apply.match_state == 1}">
												  <span>신청 진행</span>
												 </c:when>
												 <c:when test="${apply.match_state == 2}">
												  <span>신청 수락</span>
												 </c:when>
												 <c:when test="${apply.match_state == 3}">
												  <span>신청 거절</span>
												 </c:when>
											</c:choose>
										</td>
			  							<td colspan="1" style="text-align: right !important;">
			  								<c:if test="${apply.match_state == 1}">
											<button class="genric-btn info circle" onclick="javascript:cancel('${apply.match_code}');">신청취소</button>
			  								</c:if>
											<button class="genric-btn info circle" onclick="javascript:detail('${apply.match_code}');">상세보기</button>
										</td>	
									</tr>
								</c:forEach>	
							</c:if>
							<c:if test="${listcount == 0 }">
								<tr>
									<td colspan="5" style="text-align: left !important;"><font style="padding-left:10px;" size=5>등록된 글이 없습니다.</font></td>
								<tr>
							</c:if>	
							</tbody>
						</table>
						<c:if test="${listcount > 0 }">
							<div class="pagination justify-content-center">
								<c:if test="${page <= 1 }">
									<a class="gray" href="javascript:go(${page -1});" id="paging">&laquo;</a> 
								</c:if>
								<c:if test="${page > 1 }">	
									<a href="#" id="paging">&laquo;</a> 		
								</c:if>
								<c:forEach var="a" begin="${startpage}" end="${endpage}">
									<c:if test="${a == page }">
										<a class="active" id="paging">${a}</a>	
									</c:if>
									<c:if test="${a != page }">
										<a href="javascript:go(${a});" id="paging">${a}</a>
									</c:if>
								</c:forEach>
								<c:if test="${page >= maxpage }">
									<a class="gray" id="paging">&raquo;</a>
								</c:if>
								<c:if test="${page < maxpage }">
									<a href="javascript:go(${page+1});" id="paging">&raquo;</a>
								</c:if>					
							</div>
						</c:if>	
				  </div> <!-- end article_container -->
			  </article>
          </div> <!-- end col-lg-9 mb-5 mb-lg-0 -->
      </div> <!-- end row -->
    </section>
    
       <!-- 상세보기 modal -->
   <div class="modal" id="detailModal">
		<div class="modal-dialog" style="max-width: 800px;">
			<div class="modal-content">
				<div class="container" style="padding:0px">
					<div id="demo" class="carousel slide" data-ride="carousel">
					
					  <!-- Indicators -->
					  <ul class="carousel-indicators">
					    <li data-target="#demo" data-slide-to="0" class="active"></li>
					    <li data-target="#demo" data-slide-to="1"></li>
					    <li data-target="#demo" data-slide-to="2"></li>
					  </ul>
					  
					  <!-- The slideshow -->
					  <div id="slidePic" class="carousel-inner">
						<div class="carousel-item active">
						  <img src="${pageContext.request.contextPath}/resources/image/mmatch/test1.jpg" alt="Los Angeles" width="800px" height="350px">
						</div>
						<div class="carousel-item">
						  <img src="${pageContext.request.contextPath}/resources/image/mmatch/test2.jpg" alt="Chicago" width="800px" height="350px">
						</div>
						<div class="carousel-item">
						  <img src="${pageContext.request.contextPath}/resources/image/mmatch/test3.jpg" alt="New York" width="800px" height="350px">
						</div>
					  </div>
					  
					  <!-- Left and right controls -->
					  <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="carousel-control-prev-icon"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="carousel-control-next-icon"></span>
					  </a>
					</div>				
				
					<br><h2 id="detail_title" class="mb-30">러닝 가르칩니다.</h2>
					<div style="text-align:left">
					   <div id="accordion">
						    <div class="card" style="border-bottom:none;">
							      <div class="card-header" style="background-color:white;border-bottom:none;">
							      	  <div>
											<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/detail_class.png" alt="">
											<h4 class="mb-30 element_inline">수업소개</h4>
											<a class="card-link element_inline" data-toggle="collapse" href="#collapseOne">
										  		<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/arrow_down.png" alt="">  
								      		</a>
									  </div>   
								  </div>
								 <div id="collapseOne" class="collapse" data-parent="#accordion">
								      <div class="card-body" style="padding-top: 0px;">
								      	<ul style="font-size:20px;padding-left: 20px">
								      		<li>수업 과목 : <div id="detail_subject" class="element_inline">러닝</div></li>
								      		<li>수업 시간 :
								      			<div id="detail_time">
									      		    <div> - 월요일 10:30 ~ 12:30</div>
									      			<div> - 월요일 10:30 ~ 12:30</div>
									      			<div> - 화요일 08:30 ~ 10:30</div>
									      			<div> - 수요일 10:30 ~ 12:30</div>
									      			<div> - 목요일 08:30 ~ 10:30</div>
									      			<div> - 금요일 10:30 ~ 12:30</div>
								      			</div>
								      		</li>
								      		<li>수업 장소 : <div id="detail_loc" class="element_inline">올림픽 공원</div></li>
								      		<li>수업 가격 : <div id="detila_amount" class="element_inline">10</div>원</li>
								      	</ul>
								      </div>
							      </div>
						    </div>
						    <div class="card" style="border-bottom:none;">
							      <div class="card-header" style="background-color:white;border-bottom:none;">
							      	  <div>
											<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/detail_person.png" alt="">
											<h4 class="mb-30 element_inline">멘토소개</h4>
											<a class="card-link element_inline" data-toggle="collapse" href="#collapseTwo">
										  		<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/arrow_down.png" alt="">  
								      		</a>
									  </div>   
								  </div>
								 <div id="collapseTwo" class="collapse" data-parent="#accordion">
								      <div class="card-body" style="padding-top: 0px;">
								      	<ul style="font-size:20px;padding-left: 20px">
								      		<li>멘토 이름 : <div id="deatil_name" class="element_inline">홍길동</div></li>
								      		<li>멘토 경력 :
								      			<div id="detail_career">
								      				테스트1234
								      			</div>
								      		</li>
								      	</ul>
								      </div>
							      </div>
						    </div>
						    <div class="card">
							      <div class="card-header" style="background-color:white;border-bottom:none;">
							      	  <div>
											<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/detail_caution.png" alt="">
											<h4 class="mb-30 element_inline">주의사항</h4>
											<a class="card-link element_inline" data-toggle="collapse" href="#collapseThree">
										  		<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/arrow_down.png" alt="">  
								      		</a>
									  </div>   
								  </div>
								 <div id="collapseThree" class="collapse" data-parent="#accordion">
								      <div class="card-body" style="padding-top: 0px;">
								      	<ul style="font-size:20px;padding-left: 20px">
								      		<li id="detail_caution">저희 수업은 고강도 체력 훈련자를 위한 수업이므로 기초 체력이 안되신 힘들 수 있으니 신청에 주의하세요</li>
								      	</ul>
								      </div>
							      </div>
						    </div>
					   </div>
				    </div>
				</div>
			</div>
		</div>
	</div> 
	 
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/resources/js/mmatch/mentorApplist.js"></script>
    <script>
	  //상세정보 보기
	    function detail(code){
	    	console.log("code : "+ code);
	    	$.ajax({
	    		url : "sportDetail",
	    		type : "get", 
	    		data : {"code":code},
	    		dataType : "json",
	    		cache : false,
	    		success : function(data){
	    			var output='';
	    			console.log("성공");
	    			
	    			$('#detail_title').text(data.mentor_title);  //수업 타이틀 
	    			$('#detail_subject').text(data.sports_name); //수업 종목 
	    			$('#detail_loc').text(data.city+" "+data.sigungu+" "+data.mentor_loc_detail); //수업 장소
	    			$('#detila_amount').text(data.mentor_amount); //수업 금액
	    			$('#deatil_name').text(data.mentor_name);	  //멘토 이름
	    			$('#detail_caution').text(data.mentor_caution); //수업 주의사항
	    			
	    			//수업 시간 
	    			var times=data.mentor_date.split(",");
	    			$('#detail_time').empty();
	    			for(var i=0;i<times.length;i++){
	    				var detailTimes=times[i].split("/");
	        			output+="<div> - "+detailTimes[0]+"&nbsp;"+detailTimes[1]+"~"+detailTimes[2]+"</div>"
	    			}
	    			$('#detail_time').append(output);
	    			
	    			
	    			//업로드 사진 슬라이드 출력
	    			output='';
	    			$('#slidePic').empty();
	    			if(data.mentor_pic1 == null){
	    				output+='<div class="carousel-item active">';
	    				output+='<img src="/sports/resources/image/mmatch/default.jpg" alt="no img" width="800px" height="350px">';
	    				output+='</div>';
	    			}else{
	    				var spingurl = "<spring:url value='/matchupload"+data.mentor_pic1+"'/>"; 	
	    				output+='<div class="carousel-item active">';
	    				output+='<img src="';
	    				output+=spingurl;
	    				output+='" alt="no img" width="800px" height="350px"/>';
	    				output+='</div>';
	    			}
	    			
	    			if(data.mentor_pic2 == null){
	    				output+='<div class="carousel-item">';
	    				output+='<img src="/sports/resources/image/mmatch/default.jpg" alt="no img" width="800px" height="350px">';
	    				output+='</div>';
	    			}else{
	    				var spingurl = "<spring:url value='/matchupload"+data.mentor_pic2+"'/>"; 	
	    				output+='<div class="carousel-item">';
	    				output+='<img src="';
	    				output+=spingurl;
	    				output+='" alt="no img" width="800px" height="350px"/>';
	    				output+='</div>';
	    			}
	    			
	    			if(data.mentor_pic3 == null){
	    				output+='<div class="carousel-item">';
	    				output+='<img src="/sports/resources/image/mmatch/default.jpg" alt="no img" width="800px" height="350px">';
	    				output+='</div>';
	    			}else{
	    				var spingurl = "<spring:url value='/matchupload"+data.mentor_pic3+"'/>"; 	
	    				output+='<div class="carousel-item">';
	    				output+='<img src="';
	    				output+=spingurl;
	    				output+='" alt="no img" width="800px" height="350px"/>';
	    				output+='</div>';
	    			}
	    			$('#slidePic').append(output);  
	    			
	    			
	    			//멘토 경력 (append 대신 text 사용(context에 태그시 이슈)
	    			output="<div></div>";
	    			$('#detail_career').empty();
	    			var content = data.mentor_career.split(/\n|\r/);
	    			for(var i=0; i<content.length; i++){
	    				$('#detail_career').append(output);
	    				$("#detail_career>div").eq(i).text(content[i]);
	    				console.log(content[i]);
	    			} 
	    			
	    			$("#detailModal").modal();

	    		},
	    		error : function(){
	    			console.log('에러');
	    		}
	    	});
	    }
    </script>
</body>
</html>