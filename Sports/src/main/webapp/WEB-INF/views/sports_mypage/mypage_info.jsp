<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="m" value="${mypage_info}"/>
<html>
<head>
<title>회원 정보 보기</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
tr>td:nth-child(odd){font-weight:bold}
td{text-align:center}
.container{width:50%}
</style>
</head>
<body>
<div class="container">
	<%--주소 안맞으면 nullpointerException - case쪽이 잘못되었을수도 --%>
		<p>member Infomation</p>
		<table class="table table-bordered">
<%-- memberInfoAction의 request.setAttribute("memberinfo", m); --%>
		<tr>
		<td>아이디</td><td>${m.USER_ID}</td><%-- Member클래스의 getId()메소드 호출 --%>
		</tr>
		<tr>
		<td>비밀번호</td><td>${m.USER_PASS}</td>
		</tr>
		<tr>
		<td>이름</td><td>${m.USER_NAME}</td>
		</tr>
		<tr>
		<td>주민번호</td><td>${m.USER_JUMIN}</td>
		</tr>
		<tr>
		<td>휴대폰번호</td><td>${m.USER_MOBILE}</td>
		</tr>
		<tr>
		<td>주소</td><td>${m.USER_ADDRESS}</td>
		</tr>
		<tr>
		<td>이메일</td><td>${m.USER_EMAIL}</td>
		</tr>
		<tr>
		<td>키</td><td>${m.USER_HEIGHT}</td>
		</tr>
		<tr>
		<td>현재 몸무게</td><td>${m.USER_PWEIGHT}</td>
		</tr>
		<tr>
		<td>목표 몸무게</td><td>${m.USER_WWEIGHT}</td>
		</tr>
		<tr>
		<td>BMI</td><td>${m.USER_BMI}</td>
		</tr>
		<tr>
		<td>기초대사량</td><td>${m.USER_RMR}</td>
		</tr>
		<tr><td colspan="2"><a href="list">리스트로 돌아가기</a></td></tr><!-- 상대경로 -->
		</table>
	</div>
</body>
</html>