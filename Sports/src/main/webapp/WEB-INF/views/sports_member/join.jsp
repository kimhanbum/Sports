<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<script>

</script>
</head>
<body>
    <form method="post" name="joinform">
        <table width="1000px">
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
                    <input type="text" name="password" id="password" size="20px" required> 
                    *영문 대소문자/숫자/특수문자를 혼용하여 2종류10~16자 또는 3종 8~16자
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
                    <select id="phone">
                        <option value="010">010</option>
                        <option value="011">011</option>
                        <option value="019">019</option>
                    </select>
                    -
                    <input type="text" name="phone" id="phone" size="4" maxLength="4" required>-
                    <input type="text" name="phone1" id="phone1" size="4" maxLength="4" required>
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
                    <select id="email2">
                        <option value="none">==주소를 선택하세요==</option>
                        <option value="1">google.com</option>
                        <option value="2">naver.com</option>
                        <option value="3">daum.com</option>
                    </select>
                    <input type="button" id="check2" value="중복확인">
                </td>
            </tr>
            <tr>
                <td>
                    <label for="ki">키</label>
                </td>
                <td>
                	<input type="text" name="ki" id="ki" size="3" required>cm
                </td>
            </tr>
            <tr>
                <td>
                    <label for="pweight">현재몸무게</label>
                </td>
                <td>
                	<input type="text" name="pweight" id="pweight" size="3" required>kg
                </td>
            </tr>
            <tr>
                <td>
                    <label for="wweight">목표몸무게</label>
                </td>
                <td>
                	<input type="text" name="wweight" id="wweight" size="3" required>kg
                </td>
            </tr>
            <tr>
                <td>
                    <label for="sports">선호운동</label>
                </td>
                <td>
                    <select id="sports_category" name="sports_category" >
                        <option value="none">===운동종류===</option>
                        <option value="1">구기운동</option>
                        <option value="2">기구운동</option>
                        <option value="3">맨몸운동</option>
                    </select>
                    <select id="sports_name" name="sports_name">
                        <option value="none">===운동이름===</option>
                        
                        <option value="풋살">풋살</option>
                        <option value="축구">축구</option>
                        <option value="야구">야구</option>
                        <option value="농구">농구</option>
                        <option value="야구">야구</option>
                        <option value="배드민턴">배드민턴</option>
                        <option value="테니스">테니스</option>
                        <option value="탁구">탁구</option>
                        <option value="골프">골프</option>
                        
                        <option value="헬스">헬스</option>
                        <option value="크로스핏">크로스핏</option>
                        <option value="스피닝">스피닝</option>
                        <option value="사이클">사이클</option>
                        <option value="서핑">서핑</option>
                        
                        <option value="요가">요가</option>
                        <option value="필라테스">필라테스</option>
                        <option value="등산">등산</option>
                        <option value="러닝">러닝</option>
                        <option value="주짓수">주짓수</option>
                        <option value="복싱">복싱</option>
                        <option value="태권도">태권도</option>
                    </select><br>
                    <span id="selectedsports"></span>
                </td>
            </tr>
        </table>
        <input type="button" id="join" value="회원가입">
    </form>
</body>
</html>