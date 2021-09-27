<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>자유 게시판 글쓰기</title>
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
	<script src="../resources/js/BBS_FR/writeform.js" charset="utf-8"></script>
	<style>
	 h1{font-size:1.5rem; text-align:center;color:#1a92b9}
	 .container{width:60%}
	 label{font-weight:bold}
	 #upfile{display:none}
	 img{width:20px}
	</style>
</head>
<body>
 <div class="container">
	 <form action="add" method="post" enctype="multipart/form-data"
	 	name="boardform">
	 	<h1>자유게시판 글쓰기</h1>
	 	 <div class="form-group">
	 	 <select name="FR_CSFC" id="FR_CSFC"  style="width:100px; height:20px;">
                      <option value="1">운동기록</option>
                      <option value="2">운동팁</option>
                      <option value="3">수다</option>
                      <option value="4">운동파트너</option>
    	 </select></div>
	 	<div class="form-group">
	 		<label for="USER_ID">글쓴이</label>
	 		<input name="USER_ID" id="board_name" value="admin01" readOnly
	 				type="text"	class="form-control"
	 				placeholder="Enter your ID">
	 	</div>
	 	<div class="form-group">
	 		<label for="FR_PASS">비밀번호</label>
	 		<input name="FR_PASS" id="board_pass" type="password" maxlength="30"
	 				class="form-control" placeholder="Enter board_pass">
	 	</div>
	 	<div class="form-group">
	 		<label for="FR_SUBJECT">제목</label>
	 		<input name="FR_SUBJECT" id="BOARD_SUBJECT" type="text" maxlength="100"
	 				class="form-control" placeholder="Enter board_subject">
	 	</div>
	 	<div class="form-group">
	 		<label for="FR_CONTENT">내용</label>
	 		<textarea name="FR_CONTENT" id="board_content"
	 				cols="67" rows="10" class="form-control"></textarea>
	 	</div>
	 	<div class="form-group">
	 		<label for="board_file">파일 첨부</label>
	 		<label for="upfile">
	 			<img src="../resources/image/bbs_fr/attach.png" alt="파일첨부">
	 		</label>
	 		<input name="uploadfile" id="upfile" type="file">
	 		<span id="filevalue"></span>
 		</div>
 		<div class="form-group">
 			<button type="submit" class="btn btn-primary">등록</button>
 			<button type="reset" class="btn btn-danger" onclick="window.history.back()">취소</button>
 		</div>
	 </form>
 </div> 
</body>
</html>