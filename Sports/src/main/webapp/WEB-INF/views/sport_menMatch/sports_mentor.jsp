<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
<head>
<title>운동 멘티/멘토 매칭</title>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Inter:400,500,600,700&amp;display=swap" rel="stylesheet">

</head>
<style>
#paging {
	color: black;
}

.pagination a {
	color: black;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#ddd
;


}
#paging {
	text-align: center;
	margin-top: 0
}

#timeback {
	width: 100%;
	height: 30px;
	background-color: #556069;
	color: white;
	border: 1px solid white;
}

.sungjinS {
	position: absolute;
	left: 63%;
	top: 205%
}

.discount2 {
	color: red;
}
form {
  margin: 50px 0;
}

.form-check-inline {
  margin: 0 5px 10px 0;
}

[type=checkbox] {
  display: none;
}

.form-check-label {
  transition: all 144ms ease-in-out;
}
.form-check-label:hover {
  transform: scale(0.975);
}
.form-check-label::before {
  display: inline-block;
  margin-right: 2px;
  transition: transform 144ms ease-in-out;
  content: "+";
}

[type=checkbox]:not(:checked) + .form-check-label,
[type=checkbox]:not(:checked) + .form-check-label:hover {
  background-color: transparent;
  color: #363636;
  border-color: currentColor;
}

[type=checkbox]:checked + .form-check-label::before {
  transform: rotate(45deg);
}

pre code {
  display: block;
  margin: 2em 0;
  border-radius: 0.25rem;
  padding: 1em 2em;
  background: #33333f;
  color: ghostwhite;
}








input[type="radio"] {
    display: none;
}

input[type="radio"]:not(:disabled) ~ label {
    cursor: pointer;
}

input[type="radio"]:disabled ~ label {
    color: #bcc2bf;
    border-color: #bcc2bf;
    box-shadow: none;
    cursor: not-allowed;
}

label {
    height: 100%;
    display: block! important;
    background: white;
    border: 2px solid #2577fd;
    border-radius: 20px;
    padding: 1rem;
    margin-bottom: 1rem;
    text-align: center;
    box-shadow: 0px 3px 10px -2px rgba(161, 170, 166, 0.5);
    position: relative;
}

input[type="radio"] + label.changed {
    background: #2577fd;
    color: white;
    box-shadow: 0px 0px 20px rgba(0, 216, 255, 0.75);
}

input[type="radio"] + label.changed::after {
    color: #2577fd;
    font-family: FontAwesome;
    border: 2px solid #2577fd;
    content: "\f00c";
    font-size: 24px;
    position: absolute;
    top: -25px;
    left: 50%;
    transform: translateX(-50%);
    height: 50px;
    width: 50px;
    line-height: 50px;
    text-align: center;
    border-radius: 50%;
    background: white;
    box-shadow: 0px 2px 5px -2px rgba(0, 0, 0, 0.25);
}  

p {
    font-weight: 900;
}

@media only screen and (max-width: 700px) {
    section {
        flex-direction: column;
    }
}
#search_section .col{
    padding-right: 0px;
    padding-left: 0px;
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


/* custom 스클로바 옵션*/

.flex{
  display:flex;
}

.scroll{
    width: 100px;
    padding: 0px 13px 0px 13px;
    overflow-y: scroll;
    box-sizing: border-box;
    color: white;
    max-height: 630px;
    font-family: 'Nanum Gothic';
    background-color: rgba(0,0,0,0.8);
}
/* 스크롤바 설정*/
.type2::-webkit-scrollbar{
    width: 6px;
}
/* 스크롤바 막대 설정*/
.type2::-webkit-scrollbar-thumb{
    height: 17%;
    background-color: rgba(33,133,133,1);
    border-radius: 10px;  
}
/* 스크롤바 뒷 배경 설정*/
.type2::-webkit-scrollbar-track{
    background-color: rgba(33,133,133,0.33);
}
/* .modal .modal-content{
	overflow: auto; 
	max-height: 630px;
} */


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

.nav > a{
	border:none;
	color:black;
}

.nav > a:hover{
	color:blue;
}

.loc_active{
	color:red !important;
}
.gray{
  color:gray !important;
}
</style>

<body>

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img
						src="${pageContext.request.contextPath}/resources/image/logo/sports_logo.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->

	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>

	<main> <!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide03.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>운동 멘토 매칭</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> 
	
	<!-- 검색 모달 open 영역 -->
	<section id="search_section" style="padding-top: 70px; ">	
		<div class="container">
			<div style="display:inline !important">
				<h1 style="display:inline !important">${listcount}</h1>명의 멘토가 검색되었습니다.
				( 키워드 : 
				<div style="color:red; display:inline !important">테스트1</div>
				-
				<div style="color:red; display:inline !important">테스트2</div>
				)
			</div>
			<br>
			<br>
			<div class="row">
				<div class="col">
				  <input type="radio" id="location_sel" name="select" value="1" data-toggle="modal" data-target="#addressModal">
				  <label for="location_sel">
				    <h2>수업지역</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_location.png">
				  </label>
				</div>
				<div class="col">
				  <input type="radio" id="subject_sel" name="select" value="2" data-toggle="modal" data-target="#subjectModal">
				  <label for="subject_sel">
				    <h2>전체과목</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_class.png">
				 </label>
				</div>
				<div class="col">
				  <input type="radio" id="money_sel" name="select" value="3" data-toggle="modal" data-target="#paymentModal">
				  <label for="money_sel">
				    <h2>전체수업료</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_payment.png">
				 </label>
				</div>
				<div class="col">
				  <input type="radio" id="gender_sel" name="select" value="4" data-toggle="modal" data-target="#genderModal">
				  <label for="gender_sel">
				    <h2>전체성별</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_sex.png">
				 </label>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- 주소 필터 modal -->
 	<div class="modal" id="addressModal">
		<div class="modal-dialog">
			<div class="modal-content scroll type2">
				<div class="container">
					<br><h4 class=mb-30>수업지역</h4><hr>
					<div class="row product-btn d-flex justify-content-between">
                        <div class="properties_button">
                            <!--Nav Button  -->
                            <nav>                                                                                                
                                <div class="nav" id="nav-tab-si" role="tablist">
                                </div>
                            </nav>
                            <!--End Nav Button  -->
                        </div>
                	</div>
                	<br>
					<div class="grid">
				    </div>
				    <hr>
				    <input type="hidden" value="location_sel">
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:search();">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal" onclick="javascript:searchCancel();">취소하기</button>
					</div>
					
					<br>
				</div>
			</div>
		</div>
	</div> 
	
	<!-- 과목 필터 modal -->
  	<div class="modal" id="subjectModal">
		<div class="modal-dialog">
			<div class="modal-content scroll type2">
				<div class="container">
					<br><h4 class=mb-30>과목</h4><hr>
					<div class="row product-btn d-flex justify-content-between">
                        <div class="properties_button">
                            <nav>                                                                                                
                                <div class="nav" id="nav-tab-lgsubject" role="tablist">
                                </div>
                            </nav>
                        </div>
                	</div>
                	<br>
					<div class="grid">
				    </div>
				    <hr>
				    <input type="hidden" value="subject_sel">
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:search();">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal" onclick="javascript:searchCancel();">취소하기</button>
					</div>
					
					<br>
				</div>
			</div>
		</div>
	</div>  

	<!-- 수업료 필터 modal -->
	<div class="modal" id="paymentModal">
		<div class="modal-dialog">
			<div class="modal-content scroll type2">
				<div class="container">
					<br><h4 class=mb-30>수업료</h4><hr>
					<div class="grid">
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_10.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">10만이하</h2>
					            </header>
				        	</div>
				    	</label>
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_20.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">20만이하</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_30.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">30만이하</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_40.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">40만이하</h2>
					            </header>
				        	</div>
				    	</label>
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_50.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">50만이하</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_60.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">60만이하</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_70.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">70만이하</h2>
					            </header>
				        	</div>
				    	</label>
				    </div>

				    <hr>  
				    <input type="hidden" value="money_sel">  
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:search();">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal" onclick="javascript:searchCancel();">취소하기</button>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div> 
	
	<!-- 성별 필터 modal -->
	<div class="modal" id="genderModal">
		<div class="modal-dialog">
			<div class="modal-content scroll type2">
				<div class="container">
					<br><h4 class=mb-30>성별</h4><hr>
					<div class="grid">
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/gender_male.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">남성</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/gender_female.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">여성</h2>
					            </header>
				        	</div>
				    	</label>
				    </div>
				    <hr>
				    <input type="hidden" value="gender_sel">  
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal" onclick="javascript:search();">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger circle" data-dismiss="modal" onclick="javascript:searchCancel();">취소하기</button>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div> 
	
	
	<!-- mentor 공고글 리스트 -->
	<section class="latest-product-area latest-padding" style="padding-top: 70px;">
		<div class="container">
			<hr><br><br><br>
			<div class="tab-content" id="nav-tabContent">
				<!-- card one -->
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<div class="row">
						<c:if test="${listcount > 0 }">
							<c:forEach var="mentor" items="${mentorlist}">
								<div class="col-xl-4 col-lg-4 col-md-6">
									<div class="single-product mb-60" style="border: 2px solid black;">
										<div class="product-img">
											<a href="#" data-toggle="modal" data-target="#detailModal">
												<c:if test="${mentor.mentor_pic1 == null}">
													<img src="${pageContext.request.contextPath}/resources/image/mmatch/default.jpg" alt="">
												</c:if>
												<c:if test="${mentor.mentor_pic1 != null}">
													<img style="height:250px"src="<spring:url value='/matchupload${mentor.mentor_pic1}'/>" alt=""/>
												</c:if>
											</a>
										</div>
										<div class="product-caption">
											<h3><b>${mentor.mentor_title}</b></h3>
											<div class="price">
												<table class="table">
													<tr>
														<th>종목</th>
														<td>${mentor.sports_name}</td>
													</tr>
													<tr>
														<th>장소</th>
														<td>${mentor.city}&nbsp;${mentor.sigungu}</td>
													</tr>
													<tr>
														<th>인원</th>
														<td>${mentor.mentor_number}명</td>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<c:if test="${listcount == 0 }">
							<font size=5>등록된 글이 없습니다.</font>
						</c:if>
					</div>
					<hr>
					<div id="write-b">
						<c:if test="${empty USER_ID}">
							<a href="${pageContext.request.contextPath}/member/login"
								class="btn header-btn">글쓰기</a>
						</c:if>
						<c:if test="${!empty USER_ID}">
							<a href="${pageContext.request.contextPath}/mmatch/mentorWrite"
								class="btn header-btn">글쓰기</a>
						</c:if>
					</div>
					<div class="pagination justify-content-center">
						<c:if test="${page <= 1 }">
							<a class="gray" href="#" id="paging">&laquo;</a> 
						</c:if>
						<c:if test="${page > 1 }">	
							<a href="#" id="paging">&laquo;</a> 		
						</c:if>
						<c:forEach var="a" begin="${startpage}" end="${endpage}">
							<c:if test="${a == page }">
								<a class="active" href="#" id="paging">${a}</a>	
							</c:if>
							<c:if test="${a != page }">
								<a href="#" id="paging">${a}</a>
							</c:if>
						</c:forEach>
						<c:if test="${page >= maxpage }">
							<a class="gray" href="#" id="paging">&raquo;</a>
						</c:if>
						<c:if test="${page < maxpage }">
							<a href="#" id="paging">&raquo;</a>
						</c:if>					
					</div>
			   </div>
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
	
	</main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
	
    <script>
	    $(function(){
	    	//페이지로딩시 수업지역검색 modal의 기본 표시는 [서울특별시]이므로 서울 관련 모달 화면을 구성
	    	getCityList();
	    	getGunguList($('#nav-tab-si').children().eq(0).text());
	    	
	    	//페이지로딩시 전체과목검색 modal의 기본 표시는 [구기종목]이므로 구기종목 관련 모달 화면을 구성
	    	getlgSubjectList();
	    	getsubjectList($('#nav-tab-lgsubject').children().eq(0).text());

	    	//수업지역검색 modal에서 시를 선택시 선택색상변경(red)
			$('#nav-tab-si').on('click','a',function(){
		    	$('#nav-tab-si > a').removeClass("loc_active");  //미션택 도시 대항목 black색
		    	$(this).addClass("loc_active");					 //선택된 도시 대항목 red색
		    	getGunguList($(this).text());					 //선택된 도시 대항목에 대한 modal화면 재구성(ajax)
		    	$(select).next().removeClass("changed");		 //검색 종류 radio에  파란색 윤곽선이 있으면 제거 
		    }); 
	    	
	    	//전체과목검색 modal에서 대항목을 선택시 선택색상변경(red)
			$('#nav-tab-lgsubject').on('click','a',function(){
		    	$('#nav-tab-lgsubject > a').removeClass("loc_active");	//미션택 과목 대항목 black색
		    	$(this).addClass("loc_active");							//선택돤 과목 대항목 red색
		    	getsubjectList($(this).text());							//선택된 과목 대항목에 대한 modal화면 재구성(ajax)
		    	$(select).next().removeClass("changed");				//검색 종류 radio에 파란색 윤곽선이 있으면 제거 
		    }); 
	    	
	    	//검색 조건 modal의 체크박스 클릭 이벤트 처리
			$('body').on('click', 'input[type=checkbox]',function () {
				//현재 체크박스가 속한 검색종류 radio를 구함
				select="#"+$(this).parent().parent().nextAll('input[type=hidden]').val();
				console.log(select);
				
				//체크박스 유무에 따라 radio에 푸른 윤곽선 임팩트 적용
				if($(this).is(":checked")){
					console.log("check");
					$('input[type="radio"] + label').removeClass('changed');
					$(select).next().addClass("changed");
					
					//검색 조건 modal의 checkbox클릭시 다른 checkbox는 전부 false 시킴
				    $('.modal').find('input[type=checkbox]').not(this).prop("checked",false);
				}
				else{
					console.log("uncheck");
					$(select).next().removeClass("changed");
					select ='';
				}
			}); 
/* 	    	
			$("input[type=hidden] + div > button").on("click", function() { //파일 선택 처리
				console.log("버튼클릭");
				$('#genderModal').modal("hide"); //닫기 
			});
			
	    	
	    	
 	    	//modal 창을 닫을 경우 modal을 초기화 시킴
			$('.modal').on('hidden.bs.modal', function (e) {
				
			    console.log('modal close');
			    //$('.modal').find('input[type=checkbox]').prop("checked",false);
			});  */
	    	
		});

	    
	    //페이지 로딩되면 지역검색에 대한 시 항목 가져옴 
		function getCityList(){
			$.ajax({
				url : "siList",
				type : "get", 
				cache : false,
				async : false,
				success : function(data){
					if(data.length > 0){
						var output="";
						
						//ajax로 가져온 list로 option 구성
						$(data).each(function(index,item){
							output +='<a class="nav-item nav-link ';
							if(index == 0){
								output+='loc_active';
							}
							output +='" id="nav-home-tab"'
							       	+'   data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"'
							       	+'   aria-selected="true">'+item+'</a>';
                            
						})
						
						//구성한 option을 append
						$("#nav-tab-si").append(output);
					}
				},
				error : function(){
					console.log('에러');
				}
			});
		}
	    
		//지역검색에 시항목에 해당되는 군/구 정보를 가져옴
		function getGunguList(selType){
			console.log("selectType : " + selType);
			$.ajax({
				url : "dongList",
				type : "get", 
				data : {"selType":selType},
				dataType : "json",
				cache : false,
				async : false,
				success : function(data){
					if(data.length > 0){
						 //기존 군/구 화면을 제거
						$('#addressModal .grid>label').remove()
						 
						var output="";
						
						//ajax로 가져온 list로 화면 구성
						$(data).each(function(index,item){
							output+='<label class="card">'
							      +'  <input class="card__input" type="checkbox"/>'
					        	  +'  <div class="card__body">'
					              +'    <div class="card__body-cover">'
						          +'      <img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg"/>'
						          +'      <span class="card__body-cover-checkbox">'
						          +'  		 <svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">'
						          +'      		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>'
						          +'         </svg>'
						          +'      </span>'
						          +'    </div>'
						          +'    <header class="card__body-header">'
						          +'        <h4 class="card__body-header-title">'+item+'</h4>'
						          +'    </header>'
						          +'  </div>'
						          +'</label>';
						}) 
						
						//구성한 요소들을 append
						$('#addressModal .grid').append(output)
					}
				},
				error : function(){
					console.log('에러');
				}
			});
		}
		
	    //페이지 로딩되면 종목검색에 대한 대항목(구기운동/기구운동/맨몸운동)을가져옴 
    	function getlgSubjectList(){
	   		$.ajax({
   			     async: false,
   			     dataType: "json",
   			     url: "../resources/json/mmatch.json",
   			     success: function (result) {
   			    	var sport_json = result.sports;
   			    	var output="";
   			   		for(var i = 0; i < sport_json.length; i++){
	   			   		output +='<a class="nav-item nav-link ';
						if(i == 0){
							output+='loc_active';
						}
						output +='" id="nav-home-tab"'
						       	+'   data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home"'
						       	+'   aria-selected="true">'+sport_json[i]+'</a>';
   			   		}
   			   		$("#nav-tab-lgsubject").append(output);
   			     }
	   		});
    	}
	    
    	//종목검색에 대항목에 해당되는 운동정보(ex-구기운동:축구,야구,농구등등)를 가져옴
    	function getsubjectList(subject_sel){
    		var selType;
    		if(subject_sel =="구기운동"){
    			selType = 1;
    		}else if(subject_sel =="기구운동"){
    			selType = 2;
    		}else if(subject_sel =="맨몸운동"){
    			selType = 3;
    		}
    		
    		console.log("종목 Type : " + subject_sel);
    		console.log("종목 int : " + selType);
    		$.ajax({
    			url : "sportDeatilList",
    			type : "get", 
    			data : {"selType":selType},
    			dataType : "json",
    			cache : false,
    			success : function(data){
    				if(data.length > 0){
						 //기존 종목 화면 제거
						$('#subjectModal .grid>label').remove()
						 
						var output="";
						
						//ajax로 가져온 list로 화면 구성
						$(data).each(function(index,item){
							output+='<label class="card">'
							      +'  <input class="card__input" type="checkbox"/>'
					        	  +'  <div class="card__body">'
					              +'    <div class="card__body-cover">'
						          +'      <img class="card__body-cover-image"'
						          +'             src="${pageContext.request.contextPath}/resources/image/mmatch/'+ item.sports_IMG+'"/>'
						          +'      <span class="card__body-cover-checkbox">'
						          +'  		 <svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">'
						          +'      		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>'
						          +'         </svg>'
						          +'      </span>'
						          +'    </div>'
						          +'    <header class="card__body-header">'
						          +'        <h2 class="card__body-header-title">'+item.sports_NAME+'</h2>'
						          +'    </header>'
						          +'  </div>'
						          +'</label>';
						}) 
							
	
						//구성한 요소들을 append
						$('#subjectModal .grid').append(output)
    				}
    			},
    			error : function(){
    				console.log('에러');
    			}
    		});
    	}
    	
    	
	    //검색 버튼 클릭시 이벤트
	    function search(){
			console.log("검색 클릭");
			switch(select) {
			  case '#location_sel':
					console.log("지역검색 : " + $('#nav-tab-si > a.loc_active').text());
					console.log($("input[type='checkbox']:checked+div h4").text());
				    break;
			  case '#subject_sel':
					console.log("과목검색");
					console.log($("input[type='checkbox']:checked+div h2").text());
				    break;
			  case '#money_sel':
					console.log("금액검색");
					console.log($("input[type='checkbox']:checked+div h2").text());
				    break;
			  case '#gender_sel':
					console.log("성별검색");
					console.log($("input[type='checkbox']:checked+div h2").text());
				    break;
			}
			
		}
	    
	    //검색 취소 버튼 클릭시 이벤트
	    function searchCancel(){
			console.log("검색 취소");
		}
    </script>
</body>
</html>