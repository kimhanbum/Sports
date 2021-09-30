<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>수정 게시판</title>
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.js"></script>
	<script src="../resources/js/BBS_FR/modifyform.js"></script>
	<script>
	if('${result}'=='passFail'){
		alert("비밀번호가 다릅니다.")
	}
	</script>
	<style>
	 h1{font-size:1.5rem; text-align:center;color:#1a92b9}
	 .container{width:60%}
	 #upfile{display:none}
	</style>
</head>
<body>

 <div class="container">
	 <form action="modifyAction" method="post" enctype="multipart/form-data"
	 	name="modifyform">
	 	<input type="hidden" name="FR_NO" 	value="${boarddata.FR_NO}">
	 	<input type="hidden" name="FR_FILE" 	value="${boarddata.FR_FILE}">
	 	<input type="hidden" name="before_file" value="${boarddata.FR_FILE}">
	 	<h1>자유게시판 수정</h1>
	 	<div class="form-group">
	 		<label for="USER_ID">글쓴이</label>
	 		<input name="USER_ID" readOnly
	 				type="text"	class="form-control" value="${boarddata.USER_ID}">
	 	</div>
	 
	 	<div class="form-group">
	 		<label for="board_subject">제목</label>
	 		<textarea name="FR_SUBJECT" id="FR_SUBJECT" maxlength="100" rows="1"
	 				 class="form-control" rows="1">${boarddata.FR_SUBJECT}</textarea>
	 	</div>
	 	<div class="form-group">
	 		<label for="FR_CONTENT">내용</label>
	 		<textarea name="FR_CONTENT" id="FR_CONTENT"
	 					rows="15" class="form-control">${boarddata.FR_CONTENT}</textarea>
	 	</div>
	 	<div class="form-group">
	 		<label for="board_file">파일 첨부</label>
	 		<label for="upfile">
	 			<img src="../resources/image/bbs_fr/attach.png" alt="파일첨부"  width="20px">
	 		</label>
	 		<input name="uploadfile" id="upfile" type="file">
	 		<span id="filevalue">${boarddata.FR_ORIGINAL}</span>
	 		<img src="../resources/image/bbs_fr/remove.png" alt="파일삭제" width="10px" class="remove">
 		</div>
 		
 			<div class="form-group">
	 		<label for="FR_PASS">비밀번호</label>
	 		<input name="FR_PASS"
	 			   id="FR_PASS" type="password" maxlength="30" size="10"
	 			   class="form-control" placeholder="비밀번호를 입력하세요" value="">
	 	</div>
	 	
 		<div class="form-group">
 			<button type="submit" class="btn btn-primary">수정</button>
 			<button type="reset" class="btn btn-danger"
 					onClick="history.go(-1)">취소</button>
 		</div>
	 </form>
 </div>
	<jsp:include page="/WEB-INF/views/sport_comm/footer.jsp"/>
</body>
</html>