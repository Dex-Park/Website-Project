<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
    
 <%
 	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
 
	String pid = request.getParameter("pid");
	productDAO dao = new productDAO(); 
	productVO vo = dao.getData(pid);
	
%>  
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src = "http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<style>
	div.content form{
		margin: 3% 28%; 
	} 
	form ul li{
		margin-bottom:10px;
		list-style:none;
	}
	form ul li input[type="text"]{
		width:300px;
	}
	form ul li label{
		margin-right:20px;
	}
	form ul li:nth-child(2) label{
		margin-right:36px;
	}
	form ul li:nth-child(4) label,
	form ul li:nth-child(5) label,
	form ul li:nth-child(6) label{
		margin-right:52px;
	}
	form ul li:nth-child(7) label,
	form ul li:nth-child(8) label{
		margin-right:27px;
	}
	span.img_f1,
	span.img_f2{
		margin-left:-204.5px;
		display:inline-block;
		width:180px;
		font-size:16px;
		background-color:white;
	}
	button#pu_btn{
		margin-left:200px;
		
	}
</style>
<script>
	$(document).ready(function() {
			$("#pu_btn").click(function() {
				if($("#pid").val() == ""){
					alert("상품번호를 입력해주세요");
					$("#pid").focus();
				}else if($("#pname").val() == ""){
					alert("상품명 입력해주세요");
					$("#pname").focus();
				}else if($("#pinfo").val() == ""){
					alert("상품명 입력해주세요");
					$("#pinfo").focus();
				}else if($("#pkind").val() == ""){
					alert("종류를 입력해주세요");
					$("#pkind").focus();	
				}else if($("#price").val() == ""){
					alert("가격을 입력해주세요");
					$("#price").focus();
				}else if($("#color").val() == ""){
					alert("색상를 입력해주세요");
					$("#color").focus();
				}else
					productUpdateForm.submit();
			})
			
			$("#img_f1").change(function(){
					if(window.FileReader){
						var fileName= $(this)[0].files[0].name;
						$(".img_f1").text("").text(fileName);					
					}
				}) 
			$("#img_f2").change(function(){
					if(window.FileReader){
						var fileName= $(this)[0].files[0].name;
						$(".img_f2").text("").text(fileName);					
					}
				}) 	
			
		})
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section class ="section1">
				<div class="content">
					<div class="admin"><h1>상품수정</h1></div>
	  				<form name ="productUpdateForm" action="productUpdateProc.jsp?pid=<%= pid %>" method="post" enctype="multipart/form-data">
	  					<ul>
	  						<li><label>상품번호</label>
	  							<input type="text" name="pid" value = "<%= vo.getPid() %>" disabled>
	  						</li>
	  						<li><label>상품명</label>
	  						    <input type="text" name="pname" value = "<%= vo.getPname() %>" id="pname">
	  					    </li>
	  					    <li><label>상품정보</label>
	  						    <input type="text" name="pinfo" value = "<%= vo.getPinfo() %>" id="pinfo">
	  					    </li>
	  					     <li><label>종류</label>
	  						    <input type="text" name="pkind" value = "<%= vo.getPkind() %>" id="pkind">
	  					    </li>
	  					    <li><label>가격</label>
	  					    	<input type="text" name ="price" value = "<%= vo.getPrice() %>" id="price">
	  					    </li>
	  					    <li><label>색상</label>
	  					    	<input type="text" name="color" value = "<%= vo.getColor() %>" id="color">
	  					    </li> 
	  					    <li><label>이미지1</label> 
	  					    	<% if(vo.getImg1() != null) {%>
	  					    	<input type = "file" name ="img1" id ="img_f1"><span class="img_f1"><%=vo.getImg1() %></span>
	  					    	<%}else{ %>
	  					    	<input type = "file" name ="img1" id ="img_f1" ><span class="img_f1">선택된 파일 없음</span>
	  					    	<% } %>
	  					    </li>
	  					    <li><label>이미지2</label>
	  					    	<% if(vo.getImg2() != null) {%>
	  					    	<input type = "file" name ="img2" id="img_f2"><span class="img_f2"><%=vo.getImg2() %></span>
	  					    	<%}else{ %>
	  					    	<input type = "file" name ="img2" id="img_f2"><span class="img_f2">선택된 파일 없음</span>
	  					    	<% } %>
	  					    </li>					    
	  					</ul>
	  					<button type ="button" id="pu_btn">수정</button>
	  					<button type ="reset">취소</button>
	  				</form>
	  			</div>
	</section>
</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 