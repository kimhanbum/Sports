<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <title>eCommerce HTML-5 Template </title>
        
     
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/match/style2.css">
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/core/css/swiper.css" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/layout.css?sng=1632462206" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/topmenu.css?sng=1632462206" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/main.css?sng=1632462206" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/sub.css?sng=1632462206" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/banner/css/banner.css?sng=1632462206" />
<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/match/css/match.css?sng=1632462206" />
<link rel ="stylesheet" href="${pageContext.request.contextPath}/resources/css/match/sport_match.css">
<style>
	#icon_box .icon06:after{z-index:1;
						content: '';
					    position: absolute;
					    border-top: 10px solid #eb3b04;
					    border-right: 10px solid transparent;
					    border-left: 10px solid transparent;
					    bottom: -9px;
					    left: 45%;
						}
	.rows{text-align:left;}
	.social {cursor: pointer;}
	.social:hover div{color:#eb3b04;
	}
</style>
  </head>
  <body>
   	<!-- 헤더 영역  -->
<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
   <main>
       <!-- slider Area Start -->
       <div class="slider-area ">
       	<div id="icon_box">
			<div class="web_size">
				<ul>
					<a href="mainPage"><li class="icon01 top_icon" data-value="1/" >축구/풋살</li></a>
					<a href="baseball" ><li class="icon03 top_icon" data-value="3/">야구</li></a>
					<a href="football"><li class="icon09 top_icon" data-value="9/">족구</li></a>
					<a href="basketball"><li class="icon02 top_icon" data-value="2/">농구</li></a>
					<a href="volleyball"><li class="icon04 top_icon" data-value="4/">배구</li></a>
					<a href="tabletennis"><li class="icon05 top_icon" data-value="5/">탁구</li></a>
					<a href="badminton"><li class="icon06 top_icon" data-value="6/" style="background-color:#eb3b04;">배드민턴</li></a>
					<a href="tennis"><li class="icon07 top_icon" data-value="7/">테니스</li></a>
					<a href="bowling"><li class="icon010 top_icon" data-value="10/">볼링</li></a>
					<a href="golf"><li class="icon08 top_icon" data-value="8/">골프</li></a>
					<a href="http://ntler.co.kr" target="_blank">
					<li class="icon00 top_icon">맞춤유니폼</li></a>
				</ul>
			</div>
		</div>
		<br>
		<div class="gnb_wrap">
		<div class="web_size">
			<div class="gnb">
				<ul class="m_menu_box">
					<li>
						<div class="social" onclick="javascript:showSocialMatching();"><div style="text-decoration:none; line-height: 45px; font-size: 15px;">소셜매치</div></div>
					</li>
					<li>
						<div class="social" onclick="javascript:showMatchingRegi();"><div style="line-height: 45px; font-size: 15px;">매칭등록</div></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
     <div class="slider-active" id="social">
         <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/sport/badminton.jpg">
             <div class="container1">
                 <div class="row d-flex align-items-center justify-content-between">
                     <div class="col-xl-5 col-lg-6 col-md-6 d-none d-md-block">
                         <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                             <img class="smallsoccer" src="${pageContext.request.contextPath}/resources/image/sport/badminton.jpg" alt="">
                         </div>
                     </div>
                     <div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
                         <div class="hero__caption">
                             <h1 data-animation="fadeInRight" data-delay=".6s" style="color: white; font-size: 90px">Social<br>Match<br></h1>
                             <div class="hero__btn" data-animation="fadeInRight" data-delay="1s">
                                 <a href="industries.html" class="btn hero-btn">Login Now</a>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
      </div> 
   <div class="main">
       </div>
       <div class="container1">
           <form id="booking-form" class="booking-form"  action="Search" method="POST">
               <div class="form-group">
                   <div class="city ibx">
                       <label for="city" style="color:white;  width: 30%">City</label>
                       <div class="rows">
                       	<select name="city" class="form-control1">
	                       	<option value="" selected>&nbsp;지역&nbsp;</option>
	                       	<option value="서울">서울</option>
	                       	<option value="인천">인천</option>
                       	</select>
                       </div>
                   </div>
                   <div class="city_detail ibx">
                       <label for="city" style="color:white;  width: 30%">detail</label>
                       <div class="rows">
                       	<select name="city_detail" class="form-control1">
                       		<option value="" selected>&nbsp;세부지역&nbsp;&nbsp;</option>
                       		<option value="연수구">연수구</option>
                       	</select>
                       </div>
                   </div>
                   
                   <div class="form-date-to form-icon ibx">
                       <label for="date_to" style="color:white">Date</label>
                       <input type="date"
									name="match_date" min="2015-12-30" max="2022-12-31"
									id= "match_Date" class="match_Date"
									 >
                   </div>
                   <div class="form-quantity ibx">
                       <label for="quantity" style="color:white">PERSON</label>
                       <input type="number" value="0" min="0" max="11" >
                   </div>
                   
                   <div class="skill ibx">
	                   <div class="rows">
	                   <label for="city" style="color:white;  width: 30%">Skill</label>
	                   	<select name="skill" class="form-control1">
	                   		<option value="" selected>실력</option>
	                   		<option value="상">상</option>
	                   		<option value="중">중</option>
	                   		<option value="하">하</option>
	                   	</select>
	                   </div>
                   </div>
                   <div id="btnSubmit" onclick="javascript:btnClick();" class="submit ibx">Search</div>
                   <!-- <div class="form-submit">
                       <input type="submit" id="submit" class="submit" value="Search now" />
                   </div> -->
               </div>
           </form>
       </div>
      <div id="container" class="container">
<%-- 게시글이 있는 경우--%> 
<c:if test="${listcount > 0 }">
 <table class="table table-striped">
  <thead>
<tr>
   <th colspan="3">Matching list</th>
   <th colspan="2">
		<font size=3>Total : ${listcount}</font>
   </th>
</tr>
<tr>
	<th><div>글번호</div></th>
	<th><div>지역</div></th>
	<th><div>작성자</div></th>
	<th><div>날짜</div></th>
	<th><div>인원</div></th>
</tr>	
  </thead>
  <tbody>
<c:set var="num" value="${listcount-(page-1)*limit}"/>	
<c:forEach var="b" items="${boardlist}">	
<tr>
  <td><%--번호 --%>
	<c:out value="${num}"/><%-- num 출력 --%>		
	<c:set var="num" value="${num-1}"/>	<%-- num=num-1; 의미--%>	
  </td>
  <td><%--제목 --%>
     <div>			
		<%-- 답변글 제목앞에 여백 처리 부분 
		      board_re_lev,  board_num, 
		      board_subject, board_name, board_date, 
		      board_readcount : property 이름 --%>
	    <c:if test="${b.board_re_lev != 0}">  <!--  답글인 경우 -->
			<c:forEach var="a" begin="0" end="${b.board_re_lev*2}" step="1">
			&nbsp; 	
			</c:forEach>		
		</c:if>  
		 
		<c:if test="${b.board_re_lev == 0}">  <%-- 원문인 경우 --%>
			&nbsp;  
		</c:if> 			
		
		<a href="detail?num=${b.board_num}">
			 <c:out value="${b.board_subject}" />  
			<%-- ${b.board_subject} --%>
			<%-- escapeXml="true" : HTML 태그를 화면에 그대로 보여줍니다. --%>	
		</a>
	  </div>
	</td>
	<td><div>${b.board_name}</div></td>
	<td><div>${b.board_date}</div></td>	
	<td><div>${b.board_readcount}</div></td>
   </tr>
  </c:forEach>
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
	    </c:if><%-- <c:if test="${listcount > 0 }"> end --%>
	
	<%-- 게시글이 없는 경우--%>
	<c:if test="${listcount == 0 }">
		<font size=5>등록된 글이 없습니다.</font>
	</c:if>
	</div>

	
    <script src="${pageContext.request.contextPath}/resources/js/match/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/match/jquery-ui.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/js/match/main.js"></script>
   </main>
<!-- Footer 영역  -->
<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
    </body>
</html>