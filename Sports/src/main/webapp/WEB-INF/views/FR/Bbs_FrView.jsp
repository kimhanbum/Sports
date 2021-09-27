<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>자유게시판 상세보기</title>
<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/view.css">
 --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
 <script src="${pageContext.request.contextPath}/resources/js/BBS_FR/view.js"></script>
<script>
	
	var result = "${result}";
	if(result == 'passFail'){
		alert("비밀번호가 일치하지 않습니다.")
	}
	$(function(){
		$("form[action=delete]").submit(function(){
			if($("#board_pass").val() == ''){
				alert("비밀번호를 입력하세요");
				$("#board_pass").focus();
				return false;
			}
	
		})
	})
</script>

<style>
#comment > table > tbody > tr > td:nth-child(2){
width:60%
}

#count{
	position: relative;
	top: -10px;
	left: -10px;
	background: orange;
	color:white;
	border-radius: 30%
}

textarea{resixe:none}

form[action=down] > input[type=submit]{
	position: relative;
	top: -25px;
	left:10px;
	border: none;
	cursor : pointer;
	background-color : white;
}

</style>
</head>
<body>
	<%-- <input type="hidden" value="${id}" id="loginid" name="loginid"> --%>
	<input type="hidden" value='admin01' id="loginid" name="loginid">
	<div class="container">
		<table class="table table=striped">
			<tr><th colspan="2">자유게시판</th></tr>
			<tr>
				<td><div>분류</div></td>
				<td><div id="FR_CSFC">
				<c:if test="${boarddata.FR_CSFC =='1'}">
				운동기록
				</c:if>
				<c:if test="${boarddata.FR_CSFC == '2'}">
				운동팁
				</c:if>
				<c:if test="${boarddata.FR_CSFC == '3'}">
				수다
				</c:if>
				<c:if test="${boarddata.FR_CSFC == '4'}">
				운동파트너
				</c:if>
				</div></td>
			</tr>
			<tr>
				<td><div>글쓴이</div></td>
				<td><div id="BOARD_NAME">${boarddata.USER_ID}</div></td>
			</tr>
			<tr>
				<td><div>제목</div></td>
				<td><c:out value="${boarddata.FR_SUBJECT}"	/></td>
			</tr>
			<tr>
				<td><div>내용</div></td>
				<td style="padding-right:0px"><textarea class="form-control" rows="5"
					readOnly>${boarddata.FR_CONTENT}</textarea></td>
			</tr>
			
				<tr>
					<td><div>첨부파일</div></td>
					<c:if test="${!empty boarddata.FR_FILE}">
						<%-- 파일첨부한 경우 --%>
						<td><img src="../resources/image/bbs_fr/down.png" width="10px"> 
						<form method="post" action="down">
							<input type="hidden" value="${boarddata.FR_FILE}" name="filename">
							<input type="hidden" value="${boarddata.FR_ORIGINAL}" name="original">
							<input type="submit" value="${boarddata.FR_ORIGINAL}" >
						</form>
					</c:if>
					<c:if test="${empty boarddata.FR_FILE}">
						<%-- 파일첨부하지 않은 경우 --%>
						<td></td>
					</c:if>
				</tr>
			<tr>
				<td colspan="2" class="center">
				  	<button class="btn btn-primary start">댓글</button>
				  		<span id="count">${count}</span>
				  <c:if test="${board.USER_ID == id || id =='admin' }">
				   <a href="modifyView?num=${boarddata.FR_NO}">
				   	<button class="btn btn-warning">수정</button>
				  </a>
				  <a href="#">
				   	<button class="btn btn-danger" data-toggle="modal"
				   			data-target="#myModal">삭제</button>
				   </a>
				  </c:if>
			
				<%--   <a href="replyView?num=${boarddata.FR_NO}">
				   	 <button class="btn btn-info">답변</button>
				   </a>
				    --%>
				   <a href="list">
				   	 <button class="btn btn-success">목록</button>
				   </a>
				</td>
			</tr>
		</table>
<%-- 게시판view end --%>
	
		<%--modal 시작--%>
		<div class="modal" id="myModal">
		  <div class="modal-dialog">
			<div class="modal-content">
				<%--Modal body --%>
				<div class="modal-body">
				 <form name="deleteForm" action="delete" method="post">
				 	<%--http://localhost:8088/Board/BoardDetailAction.bo?num=22 
				 		주소를 보면 num을 파라미터로 넘기고 있습니다.
				 		이 값을 가져와서 ${param.num}를 사용
				 		또는 ${boarddata.BOARD_NUM}
				 	--%>
				 	<input type="hidden" name="FR_NO" value="${param.num}" id="FR_NO">
				 	<div class="form-group">
				 		<label for ="pwd">비밀번호</label>
				 		<input type="password"
				 				class="form-control" placeholder="Enter password"
				 				name="BOARD_PASS" id="board_pass">
				 	</div>
				 	<button type="submit" class="btn btn-primary">전송</button>
				 	<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				 </form>
				</div><!-- class="modal-body" -->
			</div><!-- class="modal-content -->
		</div><!-- class="modal-dialog" -->
		</div><!-- class="modal" end -->
		
	<div id="comment">
		<button class="btn btn-info float-left">총 50자까지 가능합니다.</button>
		<button id="write" class="btn btn-info float-right">등록</button>
		<textarea rows=3 class="form-control"
				  id="content" maxLength="50"></textarea>
		<table class="table table_striped">
			<thead>
			  <tr><td>아이디</td><td>내용</td><td>날짜</td></tr>
			</thead>
			<tbody>
				
			</tbody>
		</table>
			<div id="message"></div>
	</div>
</div>
</body>
</html>