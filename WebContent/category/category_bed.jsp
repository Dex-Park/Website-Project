<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script> 
<title>일룸</title>
<style>
	/* #section1_category_bed {
		border: 1px solid white;
	}
	#section1_category_bed div {
		text-align: center; 
		width: 90%;
		margin: 8% 0 0 35px;
	}
	#section1_category_bed div p {
		margin-left: 80px;
		font-size: 35px;
	}
	
	#section1_category_bed div div.category_sort {
		margin: 10px 0 40px 170px;
		text-align: right;
	}
	
	#section1_category_bed div div.category_sort a {
		color: rgb(51, 51, 51);
		margin: 0 2px;
		font-size: 13px;
		text-decoration: none;
	}
	#section1_category_bed div div.category_sort a:hover {
		color: rgb(200, 10, 30);
	}
	
	#section1_category_bed ul {
		width: 1200px;
		margin-left: 1%;
		padding: 0;
		list-style: none;
		text-align: left;
	}
	
	#section1_category_bed ul li.product_list {
		width: 280px;
		display: inline-block;
		margin: 0 1.3% 40px 0;
		/* vertical-align: top; */
	}
	
	/* #section1_category_bed ul li.product_list a {		
		text-decoration:none;
	}
	
	#section1_category_bed ul li.product_list p.product_img img{
		width: 274px;
		height: 274px;
	} */
	/* ----- hover image ----- */	
	#section1_category_bed ul li.product_list:nth-child(2) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/쿠시노_저상형2(Q)-579000.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_bed ul li.product_list:nth-child(2) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/쿠시노_저상형(SS)-480000.jpg');
	}
	
	#section1_category_bed ul li.product_list:nth-child(5) a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/아르지안트윈모션베드.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_bed ul li.product_list:nth-child(5) a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/아르지안트윈모션베드2.jpg');
	}
	
	#section1_category_bed ul li.product_list:last-child a span:first-child {
		display: inline-block;
		width: 274px;
		height: 274px;
		margin-bottom: -5px;
		background-image: url('http://localhost:9000/sist_project_2/images/미엘갤러리2.jpg');
		background-repeat: no-repeat;
	}
	#section1_category_bed ul li.product_list:last-child a span:first-child:hover {
		background-image: url('http://localhost:9000/sist_project_2/images/미엘갤러리.jpg');
	}
	
	
	
	/* #section1_category_bed ul li.product_list span.title{
		font-size: 14px;
		padding-top: 17px;
		display: inline-block;
		font-weight: bold;
		color: #333;
	}
	#section1_category_bed ul li.product_list span.explain{
		font-size: 13px;
		color: #333;
	}
	#section1_category_bed ul li.product_list span.price{
		font-size: 14px;
		color: #C80A1E;
	}
	
	#section1_category_bed ul.category_page_num {
		text-align: center;
		margin-top: 40px;
		margin-bottom: 120px;
	}
	
	#section1_category_bed ul.category_page_num li{
	    display: inline-block;
	    font-size: 12px;
	    margin-right: 10px;
	    padding: 6px 10px 6px 10px;
	    border: 1px solid rgb(224, 224, 224);
	    border-radius: 30px;
	} */
} */
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_category_bed">
			<div>
				<p>침대</p>
				<img class="category_line" src="http://localhost:9000/sist_project_2/images/event_contents_line2.jpg">
				<div class="category_sort">
					<a href="#">인기순</a>
					<a href="#">신상품순</a>
					<a href="#">가격순</a>
					<a href="#">상품평순</a>
				</div>
				<ul class="category_bed_list1">
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/bed_다나.jsp">
						<img src="http://localhost:9000/sist_project_2/images/다나.jpg">					
						<span class="title">다나</span>
						<br>
						<span class="explain">모션베드 캐주얼(라텍스,책상형)</span>
						<br>
						<span class="price">2,090,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="http://localhost:9000/sist_project_2/product_detail/bed_쿠시노.jsp">
						<span></span>
						<span class="title">쿠시노</span>
						<br>
						<span class="explain">저상형 패밀리침대(인조가죽)</span>
						<br>
						<span class="price">1,009,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/쿠시노(SS)-505000.jpg">						
						<span class="title">쿠시노</span>
						<br>
						<span class="explain">쿠시노 침대(인조가죽,SS)</span>
						<br>
						<span class="price">505,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/다나2.jpg">						
						<span class="title">다나</span>
						<br>
						<span class="explain">모션베드 캐주얼(폼,책상형)</span>
						<br>
						<span class="price">1,990,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<span></span>							
						<span class="title">아르지안</span>
						<br>
						<span class="explain">트윈모션베드 1800폭(복합,USB형,K)</span>
						<br>
						<span class="price">3,080,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<img src="http://localhost:9000/sist_project_2/images/메이.jpg">
						<span class="title">메이</span>
						<br>
						<span class="explain">소프트 침대Q</span>
						<br>
						<span class="price">849,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
	            		<img src="http://localhost:9000/sist_project_2/images/어바니.jpg">				
						<span class="title">어바니</span>
						<br>
						<span class="explain">트윈모션베드 2200폭(인조가죽)</span>
						<br>
						<span class="price">3,538,000 원</span>
						</a>
					</li>
					<li class="product_list">
						<a href="">
						<span></span>
						<span class="title">미엘갤러리</span>
						<br>
						<span class="explain">쿠션침대K</span>
						<br>
						<span class="price">798,000 원</span>
						</a>
					</li>
				</ul>
				<ul class="category_page_num">
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>