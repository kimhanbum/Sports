<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="m" value="${mypage_info}"/>
<!DOCTYPE html>
<html>
<head>
<title>회원수정 페이지</title>
<link href="css/join.css" type="text/css" rel="stylesheet">
<style>
h3{text-align:center; color:#1a92b9;}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

input{border-radius:3px;border:1px solid lightgray}
input[type=file]{display:none;}
input[type=text], input[type=password] {
    width: 100%;
    padding: 10px;
    margin: 5px 0 22px 0;
    display: inline-block;
}

input[type=radio]{
	width: 5%;
    display: inline-block;
    border: none;
}

input[type=text]:focus, input[type=password]:focus {
  box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
    outline: none;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer; /* 손가락 커서 모양 */
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
    
}
button:focus{
   outline:none;
}

/* 취소 버튼*/
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

.cancelbtn, .submitbtn {
  float: left;
  width: 50%;
}

form {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid lightgray;
    width: 600px; /* Could be more or less, depending on screen size */
    height:750px;
    padding: 16px;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
b + div{width: 100%;
    padding: 10px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table; 
}

h1{text-align:center}

b {
	width: 100%;
	display: block
}

span{display:inline-block;margin-top:-20px;font-size:10px}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
<section class="blog_area section-padding">
            <div class="row">
            	<div class="col-lg-2">
            		<!-- 마이 페이지 좌측 asideLeft 메뉴들 -->
					<jsp:include page="/WEB-INF/views/sport_comm/asideLeft.jsp"/>
                </div>
                <div class="col-lg-10 mb-5 mb-lg-0">
					<form name="joinform" action="updateProcess" method="post" enctype="multipart/form-data">
						<h3>회원 정보 수정</h3>
						<hr>
						<b>아이디</b>
						<input type="text" name="USER_ID" value="${m.USER_ID}" readOnly>
  
						<b>비밀번호</b>
						<input type="password" name="USER_PASS" value="${m.USER_PASS}" readOnly>
  
						<b>이름</b>
						<input type="text" name="USER_NAME" value="${m.USER_NAME}" placeholder="Enter name" required>
  
						<b>주민번호</b>
						<input type="text" name="USER_JUMIN" value="${m.USER_JUMIN}" placeholder="Enter JUMIN" required>
  
						<b>연락처</b>
						<input type="text" name="USER_MOBILE" value="${m.USER_MOBILE}" size="10" maxLength="11" pattern="[0-9]+" required>
  
						<b>이메일 주소</b>
						<input type="text" name="email" value="${m.USER_EMAIL}" placeholder="Enter email" required>
  
						<b>주소</b>
						<input type="text" name="USER_ADDRESS" value="${m.USER_ADDRESS}" required>
  
						<b>키(cm)</b>
						<input type="text" name="USER_HEIGHT" value="${m.USER_HEIGHT}" maxLength="3" pattern="[0-9]+" required>
  
						<b>현재 몸무게(kg)</b>
						<input type="text" name="USER_PWEIGHT" value="${m.USER_PWEIGHT}" maxLength="3" pattern="[0-9]+" required>
  
						<b>목표 몸무게(kg)</b>
						<input type="text" name="USER_WWEIGHT" value="${m.USER_WWEIGHT}" maxLength="3" pattern="[0-9]+" required>
  
						<div class="clearfix">
						<button type="submit" class="submitbtn">수정</button>
						<button type="button" class="cancelbtn">취소</button>
						</div>
					</form>
                </div> 
        </div>
    </section>
<script>
var check=0;
$('form').submit(function(){
	
});//submit end
$('input[type=file]').change(function(event){
	check++;
	var inputfile = $(this).val().split('\\');
	var filename = inputfile[inputfile.length - 1];//파일명 추출
	var pattern = /(gif|jpg|jpeg|png)$/i;	//플래그 i는 대소문자 구분 없는 검색
	if (pattern.test(filename)){
		$('#filename').text(filename);//inputfile.length - 1 = 2
		
		var reader = new FileReader();	//파일을 읽기 위한 객체 생성
//DataURL 형식으로 파일을 읽어옵니다.
//읽어온 결과는 reader객체의 result 속성에 저장됩니다.
//event.target.files[0] : 선택한 그림의 파일객체에서 첫번째 객체를 가져옵니다.
		reader.readAsDataURL(event.target.files[0]);
		
		reader.onload = function(event){//읽기에 성공했을 때 실행되는 이벤트 핸들러
			$('#showImage').html('<img width="20px" src="'
					+ event.target.result + '">');
		};
	}else{
		alert('확장자는 gif, jpg, jpeg, png가 가능합니다.');
		check=0;
	}
})//$('input[type=file]').change() 

</script>
</body>
</html>