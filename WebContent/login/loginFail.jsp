<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*"%>

<%
	String mid= request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
	$(document).ready(function(){
		$("button#btn_login").click(function(){
			//id, pass 유효성 체크(validation check)
			if($("#id").val() == ""){
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				return false;
			}else if($("#pass").val() == ""){
				alert("비밀번호를 입력해주세요.");
				$("#pass").focus();
				return false;
			}else {
				loginForm.submit();
			}
		});
	});
</script>
<style>
 div.content {
	border: 1px solid white;
}
div.login_msg{
	margin-top:10px;
	font-size:12.5px;
	color:red;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>로그인</h3>
				<form name="loginForm" action="loginProc.jsp?mid=<%=mid %>" method="get" class="loginform">
					<ul>
						<li><input type="text" name="email" placeholder="아이디(이메일)" class="textfield" id="id" value="<%= mid%>">
						</li>
						<li><input type="password" name="pass" placeholder="비밀번호" class="textfield" id="pass">
						<div class="login_msg" >일룸ID 혹은 비밀번호를 잘못 입력하셨거나 등록되지 않은 일룸ID 입니다. </div>
						</li>
						<li>
							<div class="all">
								<div class="idCheckbox">
								<input type="checkbox" class="checkbox">
								<div style="margin-left:10px; font-size:14px;">아이디저장</div>
								</div>
								<div class="link">
									<a href="http://localhost:9000/sist_project_2/join/join.jsp">회원가입</a>
									<div
										style="background-color: lightgray; width: 2px; height: 15px; margin: 0 10px;"></div>
									<a href="#">아이디,패스워드 찾기</a>
								</div>
							</div>
						</li>
						<li>
							<button type="button" class="btn_style" id="btn_login">로그인</button>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>