<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

input[type="radio"]:checked + label {
    background: #2577fd;
    color: white;
    box-shadow: 0px 0px 20px rgba(0, 216, 255, 0.75);
}

input[type="radio"]:checked + label::after {
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

input[type="radio"]#control_05:checked + label {
    background: red;
    border-color: red;
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
							<h2>운동 멘티/멘토 매칭</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> 
	
	<section id="search_section" style="padding-top: 70px; ">	
		<div class="container">
			<div style="display:inline !important"><h1 style="display:inline !important">300</h1>명의 멘토가 검색되었습니다.</div>
			<br>
			<br>
			<div class="row">
				<div class="col">
				  <input type="radio" id="control_01" name="select" value="1" data-toggle="modal" data-target="#addressModal">
				  <label for="control_01">
				    <h2>수업지역</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_location.png">
				  </label>
				</div>
				<div class="col">
				  <input type="radio" id="control_02" name="select" value="2" data-toggle="modal" data-target="#subjectModal">
				  <label for="control_02">
				    <h2>전체과목</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_class.png">
				 </label>
				</div>
				<div class="col">
				  <input type="radio" id="control_03" name="select" value="3" data-toggle="modal" data-target="#paymentModal">
				  <label for="control_03">
				    <h2>전체수업료</h2>
				    <img class="icon-xxxl" src="${pageContext.request.contextPath}/resources/image/mmatch/ic_search_filter_payment.png">
				 </label>
				</div>
				<div class="col">
				  <input type="radio" id="control_04" name="select" value="4" data-toggle="modal" data-target="#genderModal">
				  <label for="control_04">
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
					<h6 style="text-align:left" class=mb-30>서울특별시</h6>
					<div class="grid">
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_all.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">전체</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">성북구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">도봉구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">서대문구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">영등포구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">강북구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">마포구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">중구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">강서구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">관악구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">구로구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">동작구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">송파구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">노원구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">양천구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">은평구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">강남구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">용산구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">종로구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">강동구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">광진구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">금천구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">서초구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">동대문구</h2>
					            </header>
				        	</div>
				    	</label>
				    					    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">성동구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/town_gungu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">중랑구</h2>
					            </header>
				        	</div>
				    	</label>

				    </div>
				    <hr>
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">취소하기</button>
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
					<h6 style="text-align:left" class=mb-30>구기운동</h6>
					<div class="grid">
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_footsal.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">풋살</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_soccer.jpg"/>
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">축구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_baseball.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">야구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_basktball.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">농구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_badminton.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">배드민턴</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_tennis.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">테니스</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_pingpong.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">탁구</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_golf.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">골프</h2>
					            </header>
				        	</div>
				    	</label>
				    </div>
				    <hr>
				    <h6 style="text-align:left" class=mb-30>기구운동</h6>
					<div class="grid">
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_health.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">헬스</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_crossfit.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">크로스핏</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_spinning.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">스피닝</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_cycle.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">사이클</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_surfing.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">서핑</h2>
					            </header>
				        	</div>
				    	</label>
				    </div>
				    <hr>
				    <h6 style="text-align:left" class=mb-30>맨몸운동</h6>
					<div class="grid">
						<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_yoga.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">요가</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_pilates.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">필라테스</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_climbing.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">등산</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_running.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">런닝</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_jiujitsu.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">주짓수</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_boxing.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">복싱</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/category_taekwondo.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">태권도</h2>
					            </header>
				        	</div>
				    	</label>
				    </div>
				    <hr>
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">취소하기</button>
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
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_all.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">전체</h2>
					            </header>
				        	</div>
				    	</label>
				    	<label class="card">
							<input class="card__input" type="checkbox"/>
				        	<div class="card__body">
				            	<div class="card__body-cover">
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/money_no.png" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">재능기부</h2>
					            </header>
				        	</div>
				    	</label>
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
				    </div>
				    <hr>
				    <div class="grid">
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
				    </div>
				    <hr>
				    <div class="grid">
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
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">취소하기</button>
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
					            	<img class="card__body-cover-image" src="${pageContext.request.contextPath}/resources/image/mmatch/gender_all.jpg" />
					            	<span class="card__body-cover-checkbox"> 
					            		<svg class="card__body-cover-checkbox--svg" viewBox="0 0 12 10">
					                		<polyline points="1.5 6 4.5 9 10.5 1"></polyline>
					                    </svg>
					                 </span>
				                </div>
					            <header class="card__body-header">
					                <h2 class="card__body-header-title">전체 성별</h2>
					            </header>
				        	</div>
				    	</label>
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
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">취소하기</button>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div> 
	
	<!-- Latest Products Start -->
	<section class="latest-product-area latest-padding" style="padding-top: 70px;">
		
		<div class="container">
			<hr><br><br><br>
			<div class="tab-content" id="nav-tabContent">
				<!-- card one -->
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
										<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>modal 테스트</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
									<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>러닝 가르쳐 드립니다.</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
									<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>러닝 가르쳐 드립니다.</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
									<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>러닝 가르쳐 드립니다.</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
									<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>러닝 가르쳐 드립니다.</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-6">
							<div class="single-product mb-60" style="border: 2px solid black;">
								<div class="product-img">
									<a href="#" data-toggle="modal" data-target="#detailModal">
									<img src="${pageContext.request.contextPath}/resources/img/categori/product1.png" alt="">
									</a>
								</div>
								<div class="product-caption">
									<h3><b>러닝 가르쳐 드립니다.</b></h3>
									<div class="price">
										<table class="table">
											<tr>
												<th>종목</th>
												<td>러닝</td>
											</tr>
											<tr>
												<th>장소</th>
												<td>서울시 종로구 종로3가</td>
											</tr>
											<tr>
												<th>인원</th>
												<td>3명</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div id="write-b">
						<a href="${pageContext.request.contextPath}/mmatch/mentorWrite"
							class="btn header-btn">글쓰기</a>

					</div>
					<div class="pagination">
						<a href="#" id="paging">&laquo;</a> <a href="#" id="paging">1</a>
						<a href="#" id="paging">2</a> <a href="#" id="paging">3</a> <a
							href="#" id="paging">4</a> <a href="#" id="paging">5</a> <a
							href="#" id="paging">&raquo;</a>
					</div>
			   </div>
		   </div>
	   </div>
	</section>
	
   <!-- 상세보기 modal -->
	<div class="modal" id="detailModal">
		<div class="modal-dialog">
			<div class="modal-content scroll type2">
				<div class="container">
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
					      <img src="${pageContext.request.contextPath}/resources/image/mmatch/test1.jpg" alt="Los Angeles" width="1100" height="500">
					    </div>
					    <div class="carousel-item">
					      <img src="${pageContext.request.contextPath}/resources/image/mmatch/test2.jpg" alt="Chicago" width="1100" height="500">
					    </div>
					    <div class="carousel-item">
					      <img src="${pageContext.request.contextPath}/resources/image/mmatch/test3.jpg" alt="New York" width="1100" height="500">
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
				
					<br><h4 class=mb-30>러닝 가르칩니다.</h4><hr>
				    <hr>
				    <div class="mt-40">
						<button style="width:48%" type="button" class="genric-btn info circle" data-dismiss="modal">검색하기</button>
						<button style="width:48%" type="button" class="genric-btn danger  circle" data-dismiss="modal">취소하기</button>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div> 
	
	
	
	</main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
	

	
    <script>
      	$('#sel1125 > p').click(function(){
      		console.log($(this).text());
      		$('#sel1125').css("display","none");
      		$('#sel1126').text($(this).text());
      	});
      	
      	
    </script>
</body>
</html>