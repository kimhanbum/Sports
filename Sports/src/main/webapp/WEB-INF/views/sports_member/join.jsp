<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>

<style>
form {
    background-color: #e6fffe;
    margin: 5% auto 15% auto;
    border: 1px solid lightgray;
    width: 650px;
    height:950px;
    padding: 16px;
}
td{border: 1px solid #6bd6d2;}
#join{margin:0 auto; display:block; background-color:lightgreen; width:200px; height:150; }
</style>

<script>
$(function(){
	$('#email2').change(function(){  
		if($(this).val()== '1'){
			$("#email1").val(''); 
			$("#email1").attr("disabled",false); 
		}else{
			$("#email1").val($("#email2").val());
			$("#email1").attr("disabled",true);
		} 
	});

	$('input:checkbox').on('change', function(event) {
	   if($('input:checkbox:checked').length > 3) {
		   alert("선호운동은 최대 3개 선택할 수 있습니다.");
		   $('input:checkbox:checked').prop("checked",false); //비활성화
	   }
	});
})
</script>

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
    <form method="post" name="joinform">
        <table>
            <tr>
                <td>
                    <label for="id">ID</label>
                </td>
                <td>
                    <input type="text" name="id" id="id" size="20px" required>
                    <input type="button" id="idcheck" value="중복확인">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="password">비밀번호</label>
                </td>
                <td>
                    <input type="text" name="password" id="password" size="20px" required><br>
                    <span style="font-size:5px;">*영문 대소문자/숫자/특수문자를 혼용하여 2종류10~16자 또는 3종 8~16자</span>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="passcheck">비밀번호 확인</label>
                </td>
                <td>
                    <input type="text" name="passcheck" id="passcheck" size="20px" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="name">이름</label>
                </td>
                <td>
                    <input type="text" name="name" id="name" size="20px" required> 
                </td>
            </tr>
            <tr>
                <td>
                    <label for="jumin">주민등록번호</label>
                </td>
                <td>
                    <input type="text" name="jumin" id="jumin" size="10px" required>-
                    <input type="text" name="jumin" id="jumin" size="10px" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="phone">연락처</label>
                </td>
                <td>
                    <select name="phone">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="019">019</option>
                    </select>
                    -
                    <input type="text" name="phone1" id="phone1" size="4" maxLength="4" required>-
                    <input type="text" name="phone2" id="phone2" size="4" maxLength="4" required>
                </td>
            </tr>
            <tr>
               </tr>
            <tr>
                <td>
                    <label for="dong">우편번호</label>
                </td>
                <td>
                    <input type="text" name="dong" id="dong" size="5">-
                    <input type="text" name="dong" id="dong" size="5">
                    <input type="button" id="address" value="우편번호검색">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="home">집주소</label>
                </td>
                <td>
                    <input type="text" name="home" id="home" size="60" required> 
                </td>
            </tr>
            <tr>
                <td>
                    <label for="homeAddress">상세주소</label>
                </td>
                <td>
                    <input type="text" name="homeAddress" id="homeAddress" size="60">   
                </td>
            </tr>
            <tr>
                <td>
                    <label for="email">이메일</label>
                </td>
                <td>
                    <input type="text" name="email" id="email" size="10" required>@
                    <input type="text" name="email1" id="email1" style="width:100px">
                    
                    <select id="email2" name="email2">
                        <option value="1">직접입력</option>
                        <option value="google.com">google.com</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.com">daum.com</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="ki">키</label>
                </td>
                <td>
                	<input type="text" name="ki" id="ki" size="3" maxlength="3" required>cm
                </td>
            </tr>
            <tr>
                <td>
                    <label for="pweight">현재몸무게</label>
                </td>
                <td>
                	<input type="text" name="pweight" id="pweight" size="3" maxlength="3" required>kg
                </td>
            </tr>
            <tr>
                <td>
                    <label for="wweight">목표몸무게</label>
                </td>
                <td>
                	<input type="text" name="wweight" id="wweight" size="3" maxlength="3" required>kg
                </td>
            </tr>
            <tr>
                <td>
                    <label for="sports">선호운동<br>
                    (최대 3개)</label>
                </td>
                <td>
                	<label for="sports1">구기운동</label><br>
                		<input type="checkbox" name="sports_name" value="풋살">풋살	
                		<input type="checkbox" name="sports_name" value="축구">축구	
                		<input type="checkbox" name="sports_name" value="야구">야구	
                		<input type="checkbox" name="sports_name" value="농구">농구	
                		<input type="checkbox" name="sports_name" value="야구">야구	<br>
                		<input type="checkbox" name="sports_name" value="배드민턴">배드민턴	
                		<input type="checkbox" name="sports_name" value="테니스">테니스	
                		<input type="checkbox" name="sports_name" value="탁구">탁구	
                		<input type="checkbox" name="sports_name" value="골프">골프<br><br>
                	<label for="sports2">기구운동</label><br>
                		<input type="checkbox" name="sports_name" value="헬스">헬스	
                		<input type="checkbox" name="sports_name" value="크로스핏">크로스핏	
                		<input type="checkbox" name="sports_name" value="스피닝">스피닝	
                		<input type="checkbox" name="sports_name" value="사이클">사이클	
                		<input type="checkbox" name="sports_name" value="서핑">서핑	<br><br>
                	<label for="sports3">맨몸운동</label><br>
                		<input type="checkbox" name="sports_name" value="요가">요가	
                		<input type="checkbox" name="sports_name" value="필라테스">필라테스	
                		<input type="checkbox" name="sports_name" value="등산">등산	
                		<input type="checkbox" name="sports_name" value="러닝">러닝	
                		<input type="checkbox" name="sports_name" value="주짓수">주짓수	
                		<input type="checkbox" name="sports_name" value="복싱">복싱	
                		<input type="checkbox" name="sports_name" value="태권도">태권도	<br><br>
                </td>
            </tr>
        </table><br>
        <input type="button" id="join" value="회원가입" >
    </form>
    <!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>

</body>
</html>