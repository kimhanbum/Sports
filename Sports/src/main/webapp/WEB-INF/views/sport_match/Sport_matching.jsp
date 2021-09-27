<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>eCommerce HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<!--     	<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"> -->
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/match/jquery-ui.min.css">
   		 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/match/style.css">
		<!-- CSS here -->
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/core/css/common.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/core/css/bbs.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/core/css/swiper.css" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/layout.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/topmenu.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/main.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/sub.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/web/korean/css/bxslider.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/skin/member/basic_responsive/style.css?sng=1632462206"/>
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/banner/css/banner.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/tournament/css/tournament.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/team/css/team.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/match/css/match.css?sng=1632462206" />
			<link rel="stylesheet" href="https://www.baro-match.co.kr/newsite/system/ground/css/ground.css?sng=1632462206" />
			<link rel ="stylesheet" href="${pageContext.request.contextPath}/resources/css/match/sport_match.css">
			<style>
				#icon_box .icon01:after{z-index:1;
									content: '';
								    position: absolute;
								    border-top: 10px solid #eb3b04;
								    border-right: 10px solid transparent;
								    border-left: 10px solid transparent;
								    bottom: -9px;
								    left: 45%;
									}
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
    <!-- Preloader Start -->
    	<!-- 헤더 영역  -->
    	
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
    
    <main>
        <!-- slider Area Start -->
        <div class="slider-area ">
        	<div id="icon_box">
				<div class="web_size">
					<ul>
						<a href="mainPage"><li class="icon01 top_icon" data-value="1/" style="background-color:#eb3b04;">축구/풋살</li></a>
						<a href="baseball" ><li class="icon03 top_icon" data-value="3/">야구</li></a>
						<a href="football"><li class="icon09 top_icon" data-value="9/">족구</li></a>
						<a href="basketball"><li class="icon02 top_icon" data-value="2/">농구</li></a>
						<a href="volleyball"><li class="icon04 top_icon" data-value="4/">배구</li></a>
						<a href="tabletennis"><li class="icon05 top_icon" data-value="5/">탁구</li></a>
						<a href="badminton"><li class="icon06 top_icon" data-value="6/">배드민턴</li></a>
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
					<div class="m_icon_box">
						<p class="icon01 top_icon" data-value="1/">축구/풋살</p>
						<p class="icon03 top_icon" data-value="3/">야구</p>
						<p class="icon09 top_icon" data-value="9/">족구</p>
						<p class="icon02 top_icon" data-value="2/">농구</p>
						<p class="icon04 top_icon" data-value="4/">배구</p>
						<p class="icon05 top_icon" data-value="5/">탁구</p>
						<p class="icon06 top_icon" data-value="6/">배드민턴</p>
						<p class="icon07 top_icon" data-value="7/">테니스</p>
						<p class="icon010 top_icon" data-value="10/">볼링</p>
						<p class="icon008 top_icon" data-value="08/">골프</p>
						<a href="http://ntler.co.kr" target="_blank"><p class="icon00">맞춤유니폼</p></a>
					</div>
					<ul class="m_menu_box">
						<li>
							<a href="#" style="text-decoration:none; fo">소셜매치</a>
						</li>
						<li>
							<a href="#">매칭등록</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		</div>
            <div class="slider-active">
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/sport/soccer.jpg">
                    <div class="container1">
                        <div class="row d-flex align-items-center justify-content-between">
                            <div class="col-xl-6 col-lg-6 col-md-6 d-none d-md-block">
                                <div class="hero__img" data-animation="bounceIn" data-delay=".4s">
                                    <img src="${pageContext.request.contextPath}/resources/image/sport/soccer.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 col-md-5 col-sm-8">
                                <div class="hero__caption">
                                    <h1 data-animation="fadeInRight" data-delay=".6s" style="color: white; font-size: 100px">Play <br>Soccer!<br></h1>
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
            <form id="booking-form" class="booking-form" method="POST">
                <div class="form-group">
                    <div class="form-destination">
                        <label for="destination">지역</label>
                        <input type="text" id="destination" name="destination" placeholder="서울" />
                    </div>
                    <div class="form-date-to form-icon">
                        <label for="date_to">Date</label>
                        <input type="text" id="date_to" class="date_to" placeholder="날짜를 선택해주세요." />
                    </div>
                    <div class="form-quantity">
                        <label for="quantity">PERSON</label>
                        <span class="modify-qty plus" onClick="Tang()"><i class="zmdi zmdi-chevron-up"></i></span>
                        <input type="number" name="quantity" id="quantity" value="0" min="0" class="nput-text qty text">
                        <span class="modify-qty minus" onClick="Giam()"><i class="zmdi zmdi-chevron-down"></i></span>
                    </div>
                    <div class="form-submit">
                        <input type="submit" id="submit" class="submit" value="Search now" />
                    </div>
                </div>
            </form>
        </div>

    </div>
    <script src="${pageContext.request.contextPath}/resources/js/match/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/match/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/match/main.js"></script>
    </main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
    </body>
</html>