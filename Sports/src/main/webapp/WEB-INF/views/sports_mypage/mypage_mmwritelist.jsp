<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<script src="https://unpkg.com/feather-icons"></script>
</head>
<style>
#paging {
	color: black;
}

.pagination {
	position: absolute;
	left: 40%;
}

.pagination a {
	color: black;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white !important;
}

.pagination a:hover:not(.active)
{
  color:red !important;
}

#paging {
	text-align: center;
	margin-top: 0
}

td{
	vertical-align: middle !important;
	font-size:18px;
}

tbody>tr>td:nth-child(1){
	text-align:center;
	width:10%;
}
tbody>tr>td:nth-child(2){
	width:30%;
}
tbody>tr>td:nth-child(3){
	text-align:center;
	width:10%;
}
tbody>tr>td:nth-child(4){
	text-align:center;
	width:10%;
}

/*modal disign*/
body{
	/*modal 오픈시 이슈 해결위한 추가 */
    overflow: overlay !important;
}
.modal{
	text-align:center
}
.modal>.modal-dialog{
	padding-top: 72px;
	display: inline-block; 
	max-width: 1000px;
}

.card {
    --background: #fff;
    --background-checkbox: #0082ff;
    --background-image: #fff, rgba(0, 107, 175, 0.2);
    --text-color: #666;
    --text-headline: #000;
    --card-shadow: #0082ff;
    --card-height: 190px;
    --card-width: 190px;
    --card-radius: 12px;
    --header-height: 47px;
    --blend-mode: overlay;
    --transition: 0.15s;
    user-select: none;
}

.card:nth-child(odd) .card__body-cover-image {
    --x-y1: 100% 90%;
    --x-y2: 67% 83%;
    --x-y3: 33% 90%;
    --x-y4: 0% 85%;
}

.card:nth-child(even) .card__body-cover-image {
    --x-y1: 100% 85%;
    --x-y2: 73% 93%;
    --x-y3: 25% 85%;
    --x-y4: 0% 90%;
}

.card__input {
    position: absolute;
    display: block;
    outline: none;
    border: none;
    background: none;
    padding: 0;
    margin: 0;
    -webkit-appearance: none;
}

.card__input:checked ~ .card__body {
    --shadow: 0 0 0 3px var(--card-shadow);
}

.card__input:checked ~ .card__body .card__body-cover-checkbox {
    --check-bg: var(--background-checkbox);
    --check-border: #fff;
    --check-scale: 1;
    --check-opacity: 1;
}

.card__input:checked ~ .card__body .card__body-cover-checkbox--svg {
    --stroke-color: #fff;
    --stroke-dashoffset: 0;
}

.card__input:checked ~ .card__body .card__body-cover:after {
    --opacity-bg: 0;
}

.card__input:checked ~ .card__body .card__body-cover-image {
    --filter-bg: grayscale(0);
}

.card__input:disabled ~ .card__body {
    cursor: not-allowed;
    opacity: 0.5;
}

.card__input:disabled ~ .card__body:active {
    --scale: 1;
}
.card__body {
    display: grid;
    grid-auto-rows: calc(var(--card-height) - var(--header-height)) auto;
    background: var(--background);
    height: var(--card-height);
    width: var(--card-width);
    border-radius: var(--card-radius);
    overflow: hidden;
    position: relative;
    cursor: pointer;
    box-shadow: var(--shadow, 0 4px 4px 0 rgba(0, 0, 0, 0.02));
    transition: transform var(--transition), box-shadow var(--transition);
    transform: scale(var(--scale, 1)) translateZ(0);
}

.card__body:active {
    --scale: 0.96;
}

.card__body-cover {
    --c-border: var(--card-radius) var(--card-radius) 0 0;
    --c-width: 100%;
    --c-height: 100%;
    position: relative;
    overflow: hidden;
}

.card__body-cover:after {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    width: var(--c-width);
    height: var(--c-height);
    border-radius: var(--c-border);
    background: linear-gradient(to bottom right, var(--background-image));
    mix-blend-mode: var(--blend-mode);
    opacity: var(--opacity-bg, 1);
    transition: opacity var(--transition) linear;
}

.card__body-cover-image {
    width: var(--c-width);
    height: var(--c-height);
    object-fit: cover;
    border-radius: var(--c-border);
    filter: var(--filter-bg, grayscale(1));
    clip-path: polygon(0% 0%, 100% 0%, var(--x-y1, 100% 90%), var(--x-y2, 67% 83%), var(--x-y3, 33% 90%), var(--x-y4, 0% 85%));
}

.card__body-cover-checkbox {
    background: var(--check-bg, var(--background-checkbox));
    border: 2px solid var(--check-border, #fff);
    position: absolute;
    right: 10px;
    top: 10px;
    z-index: 1;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    opacity: var(--check-opacity, 0);
    transition: transform var(--transition), opacity calc(var(--transition) * 1.2) linear, -webkit-transform var(--transition) ease;
    transform: scale(var(--check-scale, 0));
}

.card__body-cover-checkbox--svg {
    width: 13px;
    height: 11px;
    display: inline-block;
    vertical-align: top;
    fill: none;
    margin: 7px 0 0 5px;
    stroke: var(--stroke-color, #fff);
    stroke-width: 2;
    stroke-linecap: round;
    stroke-linejoin: round;
    stroke-dasharray: 16px;
    stroke-dashoffset: var(--stroke-dashoffset, 16px);
    transition: stroke-dashoffset 0.4s ease var(--transition);
}

.card__body-header {
    height: var(--header-height);
    background: var(--background);
    padding: 0 10px 10px 10px;
}

.card__body-header-title {
    color: var(--text-headline);
    font-weight: 700;
    margin-bottom: 8px;
}

.card__body-header-subtitle {
    color: var(--text-color);
    font-weight: 500;
    font-size: 13px;
}
body .socials {
    position: fixed;
    display: flex;
    right: 20px;
    bottom: 20px;
}

body .socials > a {
    display: block;
    height: 28px;
    margin-left: 15px;
}

body .socials > a.dribbble img {
    height: 28px;
}

body .socials > a.twitter svg {
    width: 32px;
    height: 32px;
    fill: #1da1f2;
}

body .grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 1rem;
}

.icon_img{
	width:40px;
	height:40px;
	margin-bottom: 8px;
}
.element_inline{
	display:inline;
}


#accordion li{
   list-style-type: circle;
}
</style>

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
    <!-- Preloader Start-->

  	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	
    <!-- slider Area Start-->
    <div class="slider-area ">
        <!-- Mobile Menu -->
        <div class="single-slider slider-height2 d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/img/hero/category.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Blog</h2>
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
												<th colspan="3"><h5>작성 멘토 글 ${listcount}</h5></th> 
												<th colspan="2" style="text-align:right">
													<select name="skill" class="form-control1">
	                   									<option value="멘토" selected>멘토</option>
	                   									<option value="멘티">멘티</option>
	                   								</select>
												</th>
											</tr>
											<tr>
												<th style="background:#dcdcdc;" colspan="5">
													<div class="d-flex flex-row-reverse">
													 <img id="searchDiet" class="p-2" src="${pageContext.request.contextPath}/resources/image/mmatch/search.png" width="30px" height="30px" alt="search">
													 <input id="searchText" class="p-2" type="text" placeholder="검색어 입력하세요" required maxlength="12">
													</div>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
					  							<td>
					  								<div>
														배드민턴
											    	</div>
					  							</td>
					  							<td>
					  								<div>
					  									배드민턴 강습 합니다.(고급자용)
					  								</div>
					  							</td>
												<td>
													<span>
														30만원
													</span>
												</td>
												<td>
													<span>
														홍길동
													</span>
												</td>
					  							<td colspan="1" style="text-align: right !important;">
													<button type="button" id="DetailDietbtn" value="${b.diet_code}" class="btn btn-secondary" data-toggle="modal" data-target="#detailModal">상세</button>
													<button type="button" id="UpdateDietbtn" value="${b.diet_code}" class="btn btn-secondary">수정</button>
													<button type="button" id="DeleteDietbtn" value="${b.diet_code}" class="btn btn-secondary">삭제</button>
												</td>	
											</tr>
											<tr>
					  							<td>
					  								<div>
														배드민턴
											    	</div>
					  							</td>
					  							<td>
					  								<div>
					  									배드민턴 강습 합니다.(고급자용)
					  								</div>
					  							</td>
												<td>
													<span>
														30만원
													</span>
												</td>
												<td>
													<span>
														홍길동
													</span>
												</td>
					  							<td colspan="1" style="text-align: right !important;">
													<button type="button" id="DetailDietbtn" value="${b.diet_code}" class="btn btn-secondary" data-toggle="modal" data-target="#detailModal">상세</button>
													<button type="button" id="UpdateDietbtn" value="${b.diet_code}" class="btn btn-secondary">수정</button>
													<button type="button" id="DeleteDietbtn" value="${b.diet_code}" class="btn btn-secondary">삭제</button>
												</td>	
											</tr>
											<tr>
					  							<td>
					  								<div>
														배드민턴
											    	</div>
					  							</td>
					  							<td>
					  								<div>
					  									배드민턴 강습 합니다.(고급자용)
					  								</div>
					  							</td>
												<td>
													<span>
														30만원
													</span>
												</td>
												<td>
													<span>
														홍길동
													</span>
												</td>
					  							<td colspan="1" style="text-align: right !important;">
													<button type="button" id="DetailDietbtn" value="${b.diet_code}" class="btn btn-secondary" data-toggle="modal" data-target="#detailModal">상세</button>
													<button type="button" id="UpdateDietbtn" value="${b.diet_code}" class="btn btn-secondary">수정</button>
													<button type="button" id="DeleteDietbtn" value="${b.diet_code}" class="btn btn-secondary">삭제</button>
												</td>	
											</tr>
											<tr>
					  							<td>
					  								<div>
														배드민턴
											    	</div>
					  							</td>
					  							<td>
					  								<div>
					  									배드민턴 강습 합니다.(고급자용)
					  								</div>
					  							</td>
												<td>
													<span>
														30만원
													</span>
												</td>
												<td>
													<span>
														홍길동
													</span>
												</td>
					  							<td colspan="1" style="text-align: right !important;">
													<button type="button" id="DetailDietbtn" value="${b.diet_code}" class="btn btn-secondary" data-toggle="modal" data-target="#detailModal">상세</button>
													<button type="button" id="UpdateDietbtn" value="${b.diet_code}" class="btn btn-secondary">수정</button>
													<button type="button" id="DeleteDietbtn" value="${b.diet_code}" class="btn btn-secondary">삭제</button>
												</td>	
											</tr>
										</tbody>
									</table>
									<div>
										<div class="pagination">
											<a href="#" id="paging">&laquo;</a> 
											<a class="active" href="#" id="paging">1</a>
											<a href="#" id="paging">2</a> 
											<a href="#" id="paging">3</a> 
											<a href="#" id="paging">4</a> 
											<a href="#" id="paging">5</a> 
											<a href="#" id="paging">&raquo;</a>
										</div>
									</div>
							</div>
						</article>
                </div> 
        </div>
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
					  <div class="carousel-inner">
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
				
					<br><h2 class="mb-30">러닝 가르칩니다.</h2>
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
								      		<li>수업 과목 : <div class="element_inline">러닝</div></li>
								      		<li>수업 시간 :
								      		    <div> - 월요일 10:30 ~ 12:30</div>
								      			<div> - 월요일 10:30 ~ 12:30</div>
								      			<div> - 화요일 08:30 ~ 10:30</div>
								      			<div> - 수요일 10:30 ~ 12:30</div>
								      			<div> - 목요일 08:30 ~ 10:30</div>
								      			<div> - 금요일 10:30 ~ 12:30</div>
								      		</li>
								      		<li>수업 장소 : <div class="element_inline">올림픽 공원</div></li>
								      		<li>수업 가격 : <div class="element_inline">10만원</div></li>
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
								      		<li>멘토 이름 : <div class="element_inline">홍길동</div></li>
								      		<li>멘토 경력 :
								      			<div> - xxx상 수상</div>
								      			<div> - xxx상 수상</div>
								      			<div> - xxx상 수상</div>
								      			<div> - xxx상 수상</div>
								      			<div> - xx학교 졸업</div>
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
								      		<li>저희 수업은 고강도 체력 훈련자를 위한 수업이므로 기초 체력이 안되신 힘들 수 있으니 신청에 주의하세요</li>
								      	</ul>
								      </div>
							      </div>
						    </div>
					   </div>
				    </div>
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">신청하기</button>
					</div>
					<!-- 				    
					<div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">수정하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">삭제하기</button>
					</div>
					-->
					<br> 
				</div>
			</div>
		</div>
	</div> 
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
  
</body>
</html>