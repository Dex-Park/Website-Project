<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>EVENT</title>
<style>
	#section1_event_winner1 {
		border: 1px solid white;
	}
	#section1_event_winner1 div {
		text-align: center; 
		width: 100%;
		margin-top: 8%;
	}
	#section1_event_winner1 div h4 {
		padding-top: 12px;
		padding-bottom: 25px;
		font-family: Arial;
   		font-size: 29px;
	}
	
	#section1_event_winner1 div.eventDetailTitle {
	    font-family: NotoSansKR;
	    font-size: 32px;
	    text-align: center;
	    color: #333333;
	    margin-top: 15px;
	    margin-right: 10px;
	}
	
	#section1_event_winner1 div.eventDetailDate {
		font-family: Arial;
		font-weight: 500;
	    font-size: 12px;
	    text-align: center;
	    color: #aaaaaa;
	    margin-top: 25px;
	}
	
	#section1_event_winner1 div p {
		margin-top: 75px;
	}
	
	#section1_event_winner1 div p span{
		font-family: #333333;
		font-size: 14pt;
	}
	
	#section2_event_winner1 {
		margin-top: 80px;
		text-align: center;
	}	
	
	#section2_event_winner1 p {
		margin-top: 70px;
	}

	#section2_event_winner1 p span {
		font-size: 14pt;
		font-weight: 500;
		color: #333;
	}
	
	#section2_event_winner1 div.event_winner_img1,
	#section2_event_winner1 div.event_winner_img2,
	#section2_event_winner1 div.event_winner_img3 {
		display: inline-block;
		margin-top: 30px;
	}
	#section2_event_winner1 div.event_winner_img1 {
		margin-top: 0;
		background-color: rgb(252, 247, 241);
	}
	#section2_event_winner1 div.event_winner_img2 {
		background-color: rgb(252, 243, 244);
	}
	#section2_event_winner1 div.event_winner_img3 {
		background-color: rgb(241, 246, 249);
	}
	
	#section2_event_winner1 button {
		margin: 80px 0 20% 0;
		width: 240px;
		height: 50px;
		border: 1px solid #aaaaaa;
		background-color: white;
		color: #333333;
	}
	
	#section2_event_winner1 button:focus {
		outline: 0 !important;
	}
	
	#section2_event_winner1 button:hover{
		background-color: rgb(99,102,106);
		color: white;
		font-weight: 200px;
		border: 0;
		outline: 0;
	}
	footer {
		clear: both;
	}
}
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_event_winner1">
			<div>
				<h4>EVENT</h4>
				<div class="eventDetailTitle">#나의 로망 #일룸하다 이벤트 당첨발표</div>
				<div class="eventDetailDate">2020-10-21 ~ 2020-10-31</div>
				<p>
					<span>일룸생활러 3인과 함께하는 본격 로망 실현 이벤트</span><br>
					<span>[나의 로망 일룸하다] <b>당첨자를 발표<b>합니다.</span>
				</p>
			</div>
		</section>
		<section class="section2" id="section2_event_winner1">
			<div class="event_winner_img1">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_8153.jpg">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_8153(2).jpg">
			</div>
			<div class="event_winner_img2">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_4966.jpg">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_4966(2).jpg">
			</div>
			<div class="event_winner_img3">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_2757.jpg">
				<img src="http://localhost:9000/sist_project_2/images/event_winner_2757(2).jpg">
			</div>
			<p class="eventDetailText1_winner">
				<span>당첨되신 분들께는 응모해주신 연락처로 </span><br>
				<span><b>개별 안내</b>를 드릴 예정입니다.</span><br><br>
				<span>이벤트에 참여해주시고, </span><br>
				<span>일룸과 함께하고 싶은 로망을 들려주신 모든 분들께 감사드리며, </span><br><br>
				<span>당첨 유무에 관계 없이 들려주셨던 </span><br>
				<span>편안한 쉼이 있는, 다정한 이야기가 넘치는, </span><br>
				<span>커피 한 잔의 여유를 즐기는, 내 생활에 딱 맞는 공간을 꾸미는</span><br>
				<span>그 모든 로망이 실현되는 매일을 보낼 수 있길 </span><br>
				<span>일룸이 진심으로 응원합니다.</span><br><br>
				<span>매일 더 좋아질 당신의 생활, #일룸하세요 :)</span><br><br>
			</p>
			<button type="button" class="btn_event" onclick="location.href='http://localhost:9000/sist_project_2/event/event_winner_main.jsp'">목록으로</button>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>