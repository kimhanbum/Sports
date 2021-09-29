<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
	$("#submit").on("click", function(){
		if($("#USER_ID").val()==""){
			alert("아이디를 입력해주세요.");
			$("#USER_ID").focus();
			return false;
		}
		else if($("#USER_PASS").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#USER_PASS").focus();
			return false;
		}
		else if($("#USER_NAME").val()==""){
			alert("성명을 입력해주세요.");
			$("#USER_NAME").focus();
			return false;
		}
		else if($("#USER_JUMIN").val()==""){
			alert("주민번호 앞자리를 입력해주세요.");
			$("#USER_JUMIN").focus();
			return false;
		}
		else if($("#USER_JUMIN1").val()==""){
			alert("주민번호 뒷자리를 입력해주세요.");
			$("#USER_JUMIN").focus();
			return false;
		}
		else if($("#USER_MOBILE").val()==""){
			alert("성명을 입력해주세요.");
			$("#USER_MOBILE").focus();
			return false;
		}
		else if($("#USER_ADDRESS").val()==""){
			alert("성명을 입력해주세요.");
			$("#USER_ADDRESS").focus();
			return false;
		}
	});
	<input type="text" id="dong" placeholder="우편번호">
	<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample6_address" placeholder="주소"><br>
	<input type="text" id="sample6_detailAddress" placeholder="상세주소">
	<input type="text" id="sample6_extraAddress" placeholder="참고항목">
    function dong() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById(${"#dong"}).value = data.zonecode;
                document.getElementById(${"#home"}).value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById(${"#homeaddress"}).focus();
            }
        }).open();
    }
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
                    <label for="USER_ID">ID</label>
                </td>
                <td>
                    <input type="text" name="USER_ID" id="USER_ID" size="20px" required>
                    <input type="button" id="idcheck" value="중복확인">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="USER_PASS">비밀번호</label>
                </td>
                <td>
                    <input type="text" name="USER_PASS" id="USER_PASS" size="20px" required><br>
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
                    <label for="USER_NAME">이름</label>
                </td>
                <td>
                    <input type="text" name="USER_NAME" id="USER_NAME" size="20px" required> 
                </td>
            </tr>
            <tr>
                <td>
                    <label for="USER_JUMIN">주민등록번호</label>
                </td>
                <td>
                    <input type="text" name="USER_JUMIN" id="USER_JUMIN" size="10px" required>-
                    <input type="text" name="USER_JUMIN1" id="USER_JUMIN1" size="10px" required>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="phone">연락처</label>
                </td>
                <td>
                    <select name="USER_MOBILE">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="019">019</option>
                    </select>
                    -
                    <input type="text" name="USER_MOBILE" id="USER_MOBILE1" size="4" maxLength="4" required>-
                    <input type="text" name="USER_MOBILE" id="USER_MOBILE2" size="4" maxLength="4" required>
                </td>
            </tr>
            <tr>
               </tr>
            <tr>
                <td>
                    <label for="dong">우편번호</label>
                </td>
                <td>
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