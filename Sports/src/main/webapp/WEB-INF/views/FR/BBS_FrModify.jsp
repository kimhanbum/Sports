<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>수정 게시판</title>
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>
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
 <%-- 게시판 수정 --%>
 
 <div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">Form Element</h3>
						<form action="modifyAction" method="post" enctype="multipart/form-data"
	 					name="modifyform">
							<div class="mt-10">
								<input type="text" name="first_name" placeholder="First Name"
									onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="text" name="last_name" placeholder="Last Name"
									onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="text" name="last_name" placeholder="Last Name"
									onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="email" name="EMAIL" placeholder="Email address"
									onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required
									class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
								<input type="text" name="address" placeholder="Address" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Address'" required class="single-input">
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
								<div class="form-select" id="default-select"">
											<select>
												<option value=" 1">City</option>
									<option value="1">Dhaka</option>
									<option value="1">Dilli</option>
									<option value="1">Newyork</option>
									<option value="1">Islamabad</option>
									</select>
								</div>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
								<div class="form-select" id="default-select"">
											<select>
												<option value=" 1">Country</option>
									<option value="1">Bangladesh</option>
									<option value="1">India</option>
									<option value="1">England</option>
									<option value="1">Srilanka</option>
									</select>
								</div>
							</div>

							<div class="mt-10">
								<textarea class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Message'" required></textarea>
							</div>
						</form>
					</div>
				</div>
 
 <%-- <div class="container">
	 <form action="modifyAction" method="post" enctype="multipart/form-data"
	 	name="modifyform">
	 	<input type="hidden" name="BOARD_NUM" 	value="${boarddata.BOARD_NUM}">
	 	<input type="hidden" name="BOARD_FILE" 	value="${boarddata.BOARD_FILE}">
	 	<input type="hidden" name="before_file" value="${boarddata.BOARD_FILE}">
	 	<h1>MVC 게시판 - 수정</h1>
	 	<div class="form-group">
	 		<label for="board_name">글쓴이</label>
	 		<input name="BOARD_NAME" readOnly
	 				type="text"	class="form-control" value="${boarddata.BOARD_NAME}">
	 	</div>
	 
	 	<div class="form-group">
	 		<label for="board_subject">제목</label>
	 		<textarea name="BOARD_SUBJECT" id="board_subject" maxlength="100" rows="1"
	 				 class="form-control" rows="1">${boarddata.BOARD_SUBJECT}</textarea>
	 	</div>
	 	<div class="form-group">
	 		<label for="board_content">내용</label>
	 		<textarea name="BOARD_CONTENT" id="board_content"
	 					rows="15" class="form-control">${boarddata.BOARD_CONTENT}</textarea>
	 	</div>
	 	원문 글인 경우에만 파일 첨부 수정 가능합니다.
	 	<c:if test="${boarddata.BOARD_RE_LEV==0}">
	 	<div class="form-group">
	 		<label for="board_file">파일 첨부</label>
	 		<label for="upfile">
	 			<img src="../resources/image/attach.png" alt="파일첨부"  width="20px">
	 		</label>
	 		<input name="uploadfile" id="upfile" type="file">
	 		<span id="filevalue">${boarddata.BOARD_ORIGINAL}</span>
	 		<img src="../resources/image/remove.png" alt="파일삭제" width="10px" class="remove">
 		</div>
 		</c:if>
 		
 			<div class="form-group">
	 		<label for="board_pass">비밀번호</label>
	 		<input name="BOARD_PASS"
	 			   id="board_pass" type="password" maxlength="30" size="10"
	 			   class="form-control" placeholder="Enter board_pass" value="">
	 	</div>
	 	
 		<div class="form-group">
 			<button type="submit" class="btn btn-primary">수정</button>
 			<button type="reset" class="btn btn-danger"
 					onClick="history.go(-1)">취소</button>
 		</div>
	 </form> --%>
 </div> 
</body>
</html>