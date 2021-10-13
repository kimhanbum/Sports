<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<title>나의 멘티/멘토 작성글</title>
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
	width:10%;
}
tbody>tr>td:nth-child(4){
	text-align:center;
	width:15%;
}
</style>
</head>
<body>
  	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	
    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/mmatch/mypage_mm.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>내 멘티 작성글 리스트</h2>
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
								  	<h5>작성 멘티 글 <span id="writingcount">${listcount}</span></h5>
								  </th> 
								  <th colspan="2" style="text-align:right">
									<select id="mmSelect" class="form-control1">
          							  <option value="멘토">멘토</option>
          							  <option value="멘티" selected>멘티</option>
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
								<c:forEach var="mentee" items="${menteelist}">
									<tr>
			  							<td><div></div>${mentee.sports_name }</td>
			  							<td><div>${mentee.mentee_title}</div></td>
										<td><span>${mentee.mentee_amount}</span>원</td>
										<td>선호멘토:<span>${mentee.mentee_gender}</span></td>
			  							<td colspan="1" style="text-align: right !important;">
											<button class="genric-btn info circle" data-toggle="modal" data-target="#detailModal" onclick="javascript:detail('${mentee.mentee_code}');">상세보기</button>
											<button class="genric-btn info circle" onclick="javascript:modify('${mentee.mentee_code}');">수정하기</button>
											<button class="genric-btn info circle" onclick="javascript:del('${mentee.mentee_code}');">삭제하기</button>
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
					  
					</div>				
				
					<br><h2 id="detail_title" class="mb-30">러닝 배웁니다.</h2>
					<div style="text-align:left">
					   <div id="accordion">
						    <div class="card" style="border-bottom:none;">
							      <div class="card-header" style="background-color:white;border-bottom:none;">
							      	  <div>
											<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/detail_class.png" alt="">
											<h4 class="mb-30 element_inline">요청 수업조건</h4>
											<a class="card-link element_inline" data-toggle="collapse" href="#collapseOne">
										  		<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/arrow_down.png" alt="">  
								      		</a>
									  </div>   
								  </div>
								 <div id="collapseOne" class="collapse" data-parent="#accordion">
								      <div class="card-body" style="padding-top: 0px;">
								      	<ul style="font-size:20px;padding-left: 20px">
								      		<li>요청 과목 : <div id="detail_subject" class="element_inline">러닝</div></li>
								      		<li>요청 시간 :
								      			<div id="detail_time">
									      		    <div> - 월요일 10:30 ~ 12:30</div>
									      			<div> - 월요일 10:30 ~ 12:30</div>
									      			<div> - 화요일 08:30 ~ 10:30</div>
									      			<div> - 수요일 10:30 ~ 12:30</div>
									      			<div> - 목요일 08:30 ~ 10:30</div>
									      			<div> - 금요일 10:30 ~ 12:30</div>
								      			</div>
								      		</li>
								      		<li>요청 장소 : <div id="detail_loc" class="element_inline">올림픽 공원</div></li>
								      		<li>요청 가격 : <div id="detila_amount" class="element_inline">10</div>원</li>
								      		<li>요청 성별 : <div id="detila_gender" class="element_inline">남</div></li>
								      	</ul>
								      </div>
							      </div>
						    </div>
						    <div class="card">
							      <div class="card-header" style="background-color:white;border-bottom:none;">
							      	  <div>
											<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/detail_caution.png" alt="">
											<h4 class="mb-30 element_inline">기타 요구사항</h4>
											<a class="card-link element_inline" data-toggle="collapse" href="#collapseThree">
										  		<img class="icon_img element_inline" src="${pageContext.request.contextPath}/resources/image/mmatch/arrow_down.png" alt="">  
								      		</a>
									  </div>   
								  </div>
								 <div id="collapseThree" class="collapse" data-parent="#accordion">
								      <div class="card-body" style="padding-top: 0px;">
								      	<ul style="font-size:20px;padding-left: 20px">
								      		<li id="detail_req">부분 조건만 맞아도 가능합니다. 많이 신청 주세요~</li>
								      	</ul>
								      </div>
							      </div>
						    </div>
					   </div>
				    </div>
				    <div id="detail_btn" class="mt-40">
<!-- 						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">신청하기</button>
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">수정하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">삭제하기</button> -->
					</div>
					<br> 
				</div>
			</div>
		</div>
	</div> 
	 
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
    <script src="${pageContext.request.contextPath}/resources/js/mmatch/menteewritelist.js"></script>
    <script>
	//상세정보 보기
	function detail(code){
		console.log("code : "+ code);
		$.ajax({
			url : "menteeDetail",
			type : "get", 
			data : {"code":code},
			dataType : "json",
			cache : false,
			success : function(data){
				var output='';
				console.log("성공");
				
				$('#detail_title').text(data.mentee_title);  //수업 타이틀 
				$('#detail_subject').text(data.sports_name); //요청 종목 
				$('#detail_loc').text(data.city+" "+data.sigungu+" "+data.mentee_loc_detail); //요청 장소
				$('#detila_amount').text(data.mentee_amount); //요청 금액
				$('#detail_req').text(data.mentee_req); 	//요청 요구사항
				$('#detila_gender').text(data.mentee_gender); //요청 성별
				
				
				//요청 수업 시간 
				var times=data.mentee_date.split(",");
				$('#detail_time').empty();
				for(var i=0;i<times.length;i++){
					var detailTimes=times[i].split("/");
	    			output+="<div> - "+detailTimes[0]+"&nbsp;"+detailTimes[1]+"~"+detailTimes[2]+"</div>"
				}
				$('#detail_time').append(output);
				
				
				//업로드 사진 슬라이드 출력
				output='';
				$('#slidePic').empty();
				if(data.mentee_pic1 == null){
					output+='<div class="carousel-item active">';
					output+='<img src="/sports/resources/image/mmatch/default.jpg" alt="no img" width="800px" height="350px">';
					output+='</div>';
				}else{
					var spingurl = "<spring:url value='/matchupload"+data.mentee_pic1+"'/>"; 	
					output+='<div class="carousel-item active">';
					output+='<img src="';
					output+=spingurl;
					output+='" alt="no img" width="800px" height="350px"/>';
					output+='</div>';
				}
				$('#slidePic').append(output);  
				
				//버튼 표시
				if($('#user_id').val() != data.user_id){ //작성자가 아니면
					$('#detail_btn').empty();
					output='<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:apply('+"'"+data.mentee_code+"'"+');">신청하기</button>';
					$('#detail_btn').append(output);                                                                    
				}else{ //해당 글의  작성자면
					$('#detail_btn').empty();
					output='<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:modify('+"'"+data.mentee_code+"'"+');">수정하기</button>'
					      +'<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal" onclick="javascript:del('+"'"+data.mentee_code+"'"+');">삭제하기</button> ';
					$('#detail_btn').append(output);						
				}
				
			},
			error : function(){
				console.log('에러');
			}
		});
	}
    </script>
</body>
</html>