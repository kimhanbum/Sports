<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Total Sports Contents</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">


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

	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	
    <main>

        <!-- slider Area Start -->
        <div class="slider-area">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide01.jpg">
                    <div class="container">
                        <div style="height:800px" class="row d-flex align-items-center justify-content-between">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                            	<div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">now open!!</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">Total Sport<br>Contents</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">다양한 스포츠 컨텐츠를 제공합니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide02.jpg">
                    <div class="container">
                        <div style="height:800px" class="row d-flex align-items-center justify-content-between">
                             <div class="col-xl-5 col-lg-5 col-md-5 col-sm-5 d-none d-md-block">
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-8">
                                <div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">Sports Match</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">운동 매칭<br>서비스 제공</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">다양한 종목/자유로운 매칭</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide03.jpg">
                    <div class="container">
                        <div style="height:800px" class="row d-flex align-items-center justify-content-between">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                            	<div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">Sports Mentor/Mentee</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">멘토/멘티 <br>서비스 제공</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">사용자 중심 멘티/멘토 요청과 수락 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide04.jpg">
                    <div class="container">
                        <div style="height:800px" class="row d-flex align-items-center justify-content-between">
                             <div class="col-xl-5 col-lg-5 col-md-5 col-sm-5 d-none d-md-block">
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-8">
                                <div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">Sports Goods Trading</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">운동 물품<br>거래 서비스</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">중고거래과 경매거래 제공</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider slider-height" data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide05.jpg">
                    <div class="container">
                        <div style="height:800px" class="row d-flex align-items-center justify-content-between">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-none d-md-block">
                            	<div class="hero__caption">
                                    <span data-animation="fadeInRight" data-delay=".4s">Sports BBS</span>
                                    <h1 data-animation="fadeInRight" data-delay=".6s">자유게시판<br>서비스 제공</h1>
                                    <p data-animation="fadeInRight" data-delay=".8s">다양한 카테고리의 의견 공유 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        
                <!-- Best Collection Start -->
        <div class="best-collection-area section-padding2">
            <div class="container">
                <div class="row d-flex justify-content-between align-items-end">
                    <!-- Left content -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="best-left-cap">
                            <h2>Best Collection of This Month</h2>
                            <p>Designers who are interesten crea.</p>
                            <a href="#" class="btn shop1-btn">Shop Now</a>
                        </div>
                        <div class="best-left-img mb-30 d-none d-sm-block">
                            <img src="${pageContext.request.contextPath}/resources/img/collection/collection1.png" alt="">
                        </div>
                    </div>
                    <!-- Mid Img -->
                     <div class="col-xl-2 col-lg-2 d-none d-lg-block">
                        <div class="best-mid-img mb-30 ">
                            <img src="${pageContext.request.contextPath}/resources/img/collection/collection2.png" alt="">
                        </div>
                    </div>
                    <!-- Riht Caption -->
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="best-right-cap ">
                           <div class="best-single mb-30">
                               <div class="single-cap">
                                   <h4>Menz Winter<br> Jacket</h4>
                               </div>
                               <div class="single-img">
                                  <img src="${pageContext.request.contextPath}/resources/img/collection/collection3.png" alt="">
                               </div>
                           </div>
                        </div>
                        <div class="best-right-cap">
                           <div class="best-single mb-30">
                               <div class="single-cap active">
                                   <h4>Menz Winter<br>Jacket</h4>
                               </div>
                               <div class="single-img">
                                  <img src="${pageContext.request.contextPath}/resources/img/collection/collection4.png" alt="">
                               </div>
                           </div>
                        </div>
                        <div class="best-right-cap">
                           <div class="best-single mb-30">
                               <div class="single-cap">
                                   <h4>Menz Winter<br> Jacket</h4>
                               </div>
                               <div class="single-img">
                                  <img src="${pageContext.request.contextPath}/resources/img/collection/collection5.png" alt="">
                               </div>
                           </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        <!-- Best Collection End -->
        
        
        <!-- Category Area Start-->
        <section class="category-area section-padding30">
            <div class="container-fluid">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center mb-85">
                            <h2>오늘의 추천 운동</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/resources/img/categori/cat1.jpg" alt="">
                                <div class="category-caption">
                                    <h2>Owmen`s</h2>
                                    <span class="best"><a href="#">Best New Deals</a></span>
                                    <span class="collection">New Collection</span>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img text-center">
                                <img src="${pageContext.request.contextPath}/resources/img/categori/cat2.jpg" alt="">
                                <div class="category-caption">
                                    <span class="collection">Discount!</span>
                                    <h2>Winter Cloth</h2>
                                   <p>New Collection</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6">
                        <div class="single-category mb-30">
                            <div class="category-img">
                                <img src="${pageContext.request.contextPath}/resources/img/categori/cat3.jpg" alt="">
                                <div class="category-caption">
                                    <h2>Man`s Cloth</h2>
                                    <span class="best"><a href="#">Best New Deals</a></span>
                                    <span class="collection">New Collection</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Category Area End-->
  

        <!-- Latest Offers Start -->
        <div class="latest-wrapper lf-padding">
            <div class="latest-area latest-height d-flex align-items-center" data-background="${pageContext.request.contextPath}/resources/image/letter/latest-offer.png">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-5 col-lg-5 col-md-6 offset-xl-1 offset-lg-1">
                            <div class="latest-caption">
                                <h2>우리의 최신 정보를<br> 수신하기 위해</h2>
                                <p>메일로 구독을 신청하세요!!</p>
                            </div>
                        </div>
                         <div class="col-xl-5 col-lg-5 col-md-6 ">
                            <div class="latest-subscribe">
                                <form action="#">
                                    <input type="email" placeholder="Your email here">
                                    <button>Subscript Now</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Latest Offers End -->
        <!-- Shop Method Start-->
        <div class="shop-method-area section-padding30">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single-method mb-40">
                            <i class="ti-package"></i>
                            <h6>다양한 운동 컨텐츠</h6>
                            <p>운동을 위한 각종 매칭 시스템과 거래 및 게시판 서비스를 제공하여 사용자의 접속률 증가</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single-method mb-40">
                            <i class="ti-user"></i>
                            <h6>사용자 중심의 UI</h6>
                            <p>심플한 메뉴 구성과 화면 배치를 통해 사용자의 접근성 증가</p>
                        </div>
                    </div> 
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single-method mb-40">
                            <i class="ti-reload"></i>
                            <h6>주기적인 모니터링 및 피드백</h6>
                            <p>주기적인 모니터링을 통한 부정적인 게시글/등록글 차단 및 사용자 피드백 제공</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Method End-->
        <!-- Gallery Start-->
        <div class="gallery-wrapper lf-padding">
            <div class="gallery-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="gallery-items">
                            <img src="assets/img/gallery/gallery1.jpg" alt="">
                        </div> 
                        <div class="gallery-items">
                            <img src="assets/img/gallery/gallery2.jpg" alt="">
                        </div>
                        <div class="gallery-items">
                            <img src="assets/img/gallery/gallery3.jpg" alt="">
                        </div>
                        <div class="gallery-items">
                            <img src="assets/img/gallery/gallery4.jpg" alt="">
                        </div>
                        <div class="gallery-items">
                            <img src="assets/img/gallery/gallery5.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery End-->

    </main>

	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
   
	<!-- JS here -->
	

        
    </body>
</html>