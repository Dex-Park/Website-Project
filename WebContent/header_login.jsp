<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
%>
<% 	
	String id = request.getParameter("id");
	nibangDAO dao = new nibangDAO();
	joinVO vo = dao.getName(id);              
%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
    
</style>
</head>
<body>
	<header>
		<div>
			<div>
				<img src="http://localhost:9000/sist_project_2/images/icon_gnb_menu.png"
					onClick="document.getElementById('mw_temp').style.display='block'"
					class="menu_bar">

				<div id="mw_temp" class="mw">
					<div class="bg">
						<!--이란에는 내용을 넣지 마십시오.-->
					</div>
					<div class="fg">
						<button
							onclick="document.getElementById('mw_temp').style.display='none'"
							type="button" class="close_btn">
							<img 
								src="http://localhost:9000/sist_project_2/images/option_delete.png">
						</button>
						<nav class="first">
							<ul>
								<li class="li_logo"><img id="li_logo"
									src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></li>
								<li><a href="#" onclick="document.getElementById('mw_temp2').style.display='block'">모든제품</a></li>
								<li><a href="#">신제품</a></li>
								<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div id="mw_temp2" class="mw">
					<div class="bg">
						<!--이란에는 내용을 넣지 마십시오.-->
					</div>
					<div class="fg">
						<button
							onclick="document.getElementById('mw_temp2').style.display='none'"
							type="button" class="back_btn">
							<img 
								src="http://localhost:9000/sist_project_2/images/option_back.png">
						</button>
						<nav class="all_items">
							<ul>
								<li class="li_logo"><img id="li_logo"
									src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></li>
								<li><a href="#" onclick="document.getElementById('mw_temp2').style.display='block'">모든제품</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_table_desk.jsp">책상/식탁</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_bed.jsp">침대</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_chair.jsp">의자</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_sofa.jsp">소파</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_storage_closet.jsp">수납장</a></li>
								<li><a href="http://localhost:9000/sist_project_2/category/category_closet.jsp">옷장</a></li>
							</ul>
						</nav>
					</div>
				</div>			
				<div class="icons">
					<input type="text" name="se"> <img
						src="http://localhost:9000/sist_project_2/images/search.png">
				</div>
				
				<a href="http://localhost:9000/sist_project_2/index.jsp"><img id="logo"
					src="http://localhost:9000/sist_project_2/images/nibang_logo.png"></a>
				<nav class="second">
					<ul>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp"><span><%= vo.getName() %></span>님의 니방</a> 
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/index.jsp">로그아웃</a>
						<div></div></li>
						<li><a href=" ">장바구니</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/event/event_main.jsp">이벤트</a>
						<div></div></li>
						<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터</a>
						<div></div></li>
						<li style="padding-right: 20px;"><a href="">매장안내</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
</body>
</html>