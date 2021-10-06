<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>경매거래 글쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<style>
#paging {
	color: black;
}

.pagination {
	display: inline-block;
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


/*파일 */
label.file input {
	position: absolute;
	width: 0;
	overflow: hidden;
	opacity: 0;
}

label.file {
	width: 0%; /* Use for fluid design */
	min-width: 200px;
	height: 30px;
	line-height: 28px !important;
	cursor: pointer;
	position: relative;
	display: inline-block;
	white-space: nowrap;
	font-family: sans-serif;
	text-align: right;
}

label.file:before {
	content: "No file chosen";
	display: block;
	position: absolute;
	box-sizing: border-box;
	width: 100%;
	height: inherit;
	padding: 0 84px 0 10px;
	border: 0px solid #e8eeef;
	border-width: 2px 0px 2px 2px;
	border-radius: 3px 0 0 3px;
	background-color: #fff;
	color: #a0b7c5;
	font-size: 12px;
	overflow: hidden;
	text-overflow: ellipsis;
	text-align: center;
	vertical-align: middle;
}

label.file[title]:not ([title=""] ):before {
	content: attr(title);
	color: #162f44;
}

label.file:after {
	content: "BROWSE";
	display: inline-block;
	position: relative;
	box-sizing: border-box;
	width: 74px;
	height: inherit;
	padding: 0 4px;
	border-radius: 0 3px 3px 0;
	background-color: #a0b7c5;
	color: #fff;
	overflow: hidden;
	font-size: 9px;
	font-weight: bold;
	text-overflow: ellipsis;
	text-align: center;
	vertical-align: middle;
}

/* 라디오 */
.checkbox[type=checkbox], .checkbox[type=radio] {
	display: none;
}

label.input-label {
	display: inline-block;
	font-size: 13px;
	cursor: pointer;
}

label.input-label::before {
	display: inline-block;
	margin: 0 20px;
	font-family: FontAwesome;
	font-size: 20px;
	color: rgba(4, 120, 193, 0.2);
	-webkit-transition: transform 0.2s ease-out, color 0.2s ease;
	-moz-transition: transform 0.2s ease-out, color 0.2s ease;
	-ms-transition: transform 0.2s ease-out, color 0.2s ease;
	-o-transition: transform 0.2s ease-out, color 0.2s ease;
	transition: transform 0.2s ease-out, color 0.2s ease;
	-webkit-transform: scale3d(0.8, 0.8, 1);
	-moz-transform: scale3d(0.8, 0.8, 1);
	-ms-transform: scale3d(0.8, 0.8, 1);
	-o-transform: scale3d(0.8, 0.8, 1);
	transform: scale3d(0.8, 0.8, 1);
}

label.input-label.checkbox::before {
	content: "\f0c8";
}

label.input-label.radio::before {
	content: "\f111";
}

input.checkbox+label.input-label:hover::before {
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox+label.input-label:active::before {
	-webkit-transform: scale3d(1.5, 1.5, 1);
	-moz-transform: scale3d(1.5, 1.5, 1);
	-ms-transform: scale3d(1.5, 1.5, 1);
	-o-transform: scale3d(1.5, 1.5, 1);
	transform: scale3d(1.5, 1.5, 1);
}

input.checkbox:checked+label.input-label::before {
	display: inline-block;
	font-family: FontAwesome;
	color: #0478c1;
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox:checked+label.input-label.checkbox::before {
	content: "\f14a";
}

input.checkbox:checked+label.input-label.radio::before {
	content: "\f058";
}






.row select{
	text-align: center; height:30px; width:150px ;
}


#MENTOR_SUBJECT, .row select {
	border-radius: 30px 30px 30px 30px;
}

#addTime img:hover, #deleteTime img:hover{
	cursor: pointer;
}

#addTime img:active,#deleteTime img:active{
	opacity: 0.2;
}

#addTime img,#deleteTime img{
	width:30px;
	height:30px;
}
.element_inline{
	display:inline;
}

</style>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

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
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp" />

	<main> <!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="${pageContext.request.contextPath}/resources/image/mainSlide/main_slide03.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>멘토 공고 글쓰기</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start -->

	<div class="site-section bg-light" style="padding-top: 50px;padding-bottom: 50px">
		<div class="container" style="padding: 30px;border: 2px solid;">
			<div class="row">
				<div class="col-lg-12">
					<form action="add" method="post" enctype="multipart/form-data">
						<!-- 수업 타이틀  -->
						<div class="row">
							<div class="col-md-4 form-group">
								<label for="MENTOR_SUBJECT"><h4>수업 제목</h4></label> <input
									type="text" id="MENTOR_SUBJECT" name="MENTOR_SUBJECT"
									class="form-control form-control-lg" style="width: 1013px"
									placeholder="제목을 입력하세요">
							</div>

						</div>
						<br>
						
						<!-- 수업 종목  -->
						<div class="row">
							<div class="col form-group">
								<h4>수업 종목</h4>
								항목&nbsp;
								<select name='MENTOR_SPORTS_CATEGORY1' id="MENTOR_SPORTS_CATEGORY1" >
									<option style=""value='' selected>-- 선택 --</option>
									<option value=1>구기운동</option>
									<option value=2>기구운동</option>
									<option value=3>맨몸운동</option>
								</select>
								&nbsp;&nbsp;&nbsp;&nbsp;카테고리
								<select name='MENTOR_SPORTS_CATEGORY2' id="MENTOR_SPORTS_CATEGORY2"">
									<option style=""value='' selected>-- 선택 --</option>
									<option value="축구" >축구</option>
									<option value="풋살">풋살</option>
									<option value="야구">야구</option>
									<option value="농구">농구</option>
								</select>
							</div>
						</div>
						<br>
						
						<!-- 수업 시간  -->
						<div class="row" id="time_row">
							<div class="col form-group">
								<label for="MENTOR_SUBJECT">
									<h4>수업 시간</h4>
								</label>
								<div class="element_inline" id="addTime">
									<img style="margin-bottom: 8px" src="${pageContext.request.contextPath}/resources/image/mmatch/plus_icon.png" alt="">
								</div>
								<div id="mentor_time_list">
									<div>
										요일&nbsp;
										<select name='MENTOR_TIME_SEL' id="MENTOR_TIME_SEL">
											<option value="" selected>-- 선택 --</option>
											<option value="월요일" >월요일</option>
											<option value="화요일" >화요일</option>
											<option value="수요일" >수요일</option>
											<option value="목요일" >목요일</option>
											<option value="금요일" >금요일</option>
											<option value="토요일" >토요일</option>
											<option value="일요일" >일요일</option>
											<option value="매일" >매일</option>
											<option value="평일" >평일</option>
											<option value="주말" >주말</option>
										</select>
										&nbsp;&nbsp;&nbsp;
										시작시간 &nbsp;<input class="element_inline" style="width:140px;" type="time" class="form-control"/>
	    								&nbsp;&nbsp;&nbsp;
	    								종료시간 &nbsp;<input class="element_inline" style="width:140px;" type="time" class="form-control"/>
										<div class="element_inline" id="deleteTime">
											<img src="${pageContext.request.contextPath}/resources/image/mmatch/minus_icon.png" alt="">							
										</div>
									</div>
    							</div>
							</div>
						</div>
						<br>

						<!-- 수업 장소  -->
						<div class="row">
							<div class="col form-group">
								<h4>수업 장소</h4>
								장소&nbsp;
								<select name='MENTOR_LOC_CATEGORY1' id="MENTOR_LOC_CATEGORY1" >
									<option style=""value='' selected>-- 선택 --</option>
									<option value=1>서울특별시</option>
								</select>
								&nbsp;
								<select name='MENTOR_LOC_CATEGORY2' id="MENTOR_LOC_CATEGORY2"">
									<option style=""value='' selected>-- 선택 --</option>
									<option value="용산구" >용산구</option>
									<option value="강남구">강남구</option>
									<option value="종로구">종로구</option>
									<option value="서대문구">서대문구</option>
								</select>
								&nbsp;
								<input type="text" id="mentor_loc_detail" name="mentor_loc_detail"
										style="width: 647px"
										placeholder="&nbsp;상세 주소 입력하세요">
							</div>
						</div>
						<br>

						<!-- 수업 가격 /수업 인원 -->
						<div class="row">
							<div class="col form-group">
								<h4>수업 가격/수업 인원</h4>
								가격&nbsp;
								<input type="text" id="mentor_price" name="mentor_price"
										style="width: 140px;text-align:right;"
										>원
								&nbsp;&nbsp;&nbsp;&nbsp;수업 인원&nbsp;
								<input type="text" id="mentor_member_cnt" name="mentor_member_cnt"
										style="width: 140px;text-align:right;"
										>명
							</div>
						</div>
						<br>
					
						<!-- 수업 주의사항 -->
						<div class="row">
							<div class="col form-group">
								<h4>주의사항</h4>
								<input style="width:1013px;" type="text" id="mentor_caution" name="mentor_caution">
							</div>
						</div>
						<br>
						
						<!-- 멘토 소개-->
						<div class="row">
							<div class="col-md-11 form-group">
								<h4>멘토 소개</h4>
								<textarea name="memtor_introduce" id="memtor_introduce" cols="30"rows="10" class="form-control"></textarea>
							</div>
						</div>
						<hr>

						<!--첨부 사진 -->
						<div class="row">
							<div class="col-md-6 form-group">
								<h4>첨부 사진</h4><br>
								첨부1
								<div style="color:red"class="element_inline">(해당 파일은 공고화면에 표시됩니다.)</div>
								<div class="custom-file mb-3"  style="width:1013px;" >
      								<input type="file" class="custom-file-input" id="customFile1" name="filename1">
      								<label class="custom-file-label" for="customFile1">Choose file</label>
    							</div>
    							첨부2<div class="custom-file mb-3"  style="width:1013px;" >
      								<input type="file" class="custom-file-input" id="customFile2" name="filename2">
      								<label class="custom-file-label" for="customFile2">Choose file</label>
    							</div>
    							첨부3<div class="custom-file mb-3"  style="width:1013px;" >
      								<input type="file" class="custom-file-input" id="customFile3" name="filename3">
      								<label class="custom-file-label" for="customFile3">Choose file</label>
    							</div>
							</div>
							
						</div>
						<hr>
						<br>
						<div class="row" style="text-align: center">
							
							<div class="col-12">
								<input type="submit" value="Submit"
									class="btn btn-primary py-3 px-5"
									style="background-color: black; height: 50px"> &emsp;
								<input type="button" value="Cancel"
									class="btn btn-primary py-3 px-5"
									style="background-color: gray; height: 50px">
							</div>
							<br><br>
						</div>
					</form>
				</div>

			</div>


		</div>
	</div>











	<!-- Gallery End--> </main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp" />

	<!-- JS here -->
	<script>
		$("#addTime img").click(function(){
			output='<div> 요일&nbsp;'
				  +'  <select name="MENTOR_SPORTS_CATEGORY2" id="MENTOR_SPORTS_CATEGORY2">'
				  +'    <option value="" selected>-- 선택 --</option>'
				  +'    <option value="월요일" >월요일</option>'
				  +'    <option value="화요일" >화요일</option>'
				  +'    <option value="수요일" >수요일</option>'
				  +'    <option value="목요일" >목요일</option>'
				  +'    <option value="금요일" >금요일</option>'
				  +'    <option value="토요일" >토요일</option>'
				  +'    <option value="일요일" >일요일</option>'
				  +'    <option value="매일" >매일</option>'
				  +'    <option value="평일" >평일</option>'
				  +'    <option value="주말" >주말</option>'
				  +'  </select> &nbsp;&nbsp;&nbsp;시작시간 &nbsp;'
			      +'  <input class="element_inline" style="width:140px;" type="time" class="form-control"/>'
			      +'  &nbsp;&nbsp;&nbsp;종료시간 &nbsp;'
			      +'  <input class="element_inline" style="width:140px;" type="time" class="form-control"/>'
			      +'  <div class="element_inline" id="deleteTime">'
				  +'     <img src="${pageContext.request.contextPath}/resources/image/mmatch/minus_icon.png" alt="">'							
			      +'  </div>'
			      +'</div>';
			$('#mentor_time_list').append(output);
		});
		
		$("body").on("click","#deleteTime img",function(){
			$(this).parent().parent().remove();
		});
		
		$(".custom-file-input").on("change", function() {
			  var fileName = $(this).val().split("\\").pop();
			  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
			});
	</script>


</body>
</html>