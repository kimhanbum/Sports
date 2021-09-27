<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>자유 게시판</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
   <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	
	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
	<script src="../resources/js/BBS_FR/list.js" charset="utf-8"></script>
	<style>
	.blog_right_sidebar{float:right}
	.cnt{color:gray; font-size:small}
	</style>
</head>

<body>
    
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/bbs_fr/board_headline.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>자유게시판</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

    <!--================BBS_FRList Area =================-->
    <section class="blog_area section-padding">
   <!--   <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Search Keyword'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Search</button>
                            </form>
        				</aside>
    			   </div>
      </div> -->
        <div class="container">
        
         <%-- 게시글이 있는 경우--%> 
<c:if test="${listcount > 0 }">
  <table class="table">
   <thead>
	<tr>
	   <th colspan="6">
			<font size=3>글 개수 : ${listcount}</font>
	   </th>
	</tr>
	<tr>
		<th><div>번호</div></th>
		<th><div>분류</div></th>
		<th><div>제목</div></th>
		<th><div>작성자</div></th>
		<th><div>날짜</div></th>
		<th><div>조회수</div></th>
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
	  <td><div>
          	    <c:if test="${b.FR_CSFC == '1' }">
	                        운동기록
		        </c:if>
	            <c:if test="${b.FR_CSFC == '2' }">
	                        운동팁
		        </c:if>
	            <c:if test="${b.FR_CSFC == '3' }">
	                        수다
		        </c:if>		
	            <c:if test="${b.FR_CSFC == '4' }">
	                        운동파트너
		        </c:if>
         </div></td>
	  <td ><%--제목 --%>
	     <div>		
			<a href="detail?num=${b.FR_NO}">
				 <c:out value="${b.FR_SUBJECT}" />  
				<%-- ${b.board_subject} --%>
				<%-- escapeXml="true" : HTML 태그를 화면에 그대로 보여줍니다. --%>	
			</a>
			<span class="cnt">[<c:out value="${b.CNT}"/>]</span>
		  </div>
		</td>
		<td><div>${b.USER_ID}</div></td>
		<td><div>${b.FR_DATE}</div></td>	
		<td><div>${b.FR_READCOUNT}</div></td>
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
	<button type="button" class="btn btn-info float-right">글 쓰 기</button>
   </div>
  </section>
    <!--================BBS_FRList Area End=================-->

   <!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>

		<!-- One Page, Animated-HeadLin -->
        <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>