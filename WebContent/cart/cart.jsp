<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
   String mid = request.getParameter("id");
   String pid = request.getParameter("pid");
   System.out.println(mid);
   
   productDAO pdao = new productDAO();
   nibangDAO ndao = new nibangDAO();
   cartDAO cdao = new cartDAO();
   
   ArrayList<cartVO> cartList = cdao.getCart(mid);
  int totalcount = 0;
   for(int i = 0; i < cartList.size(); i++){
      totalcount += (cartList.get(i  ).getPrice() * cartList.get(i).getC_qty());
   } 
   
%>
<%if(mid != null) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
section.section1 {
   width: 100%;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}         
div.content {
   margin-top: 20px;
    margin-bottom: 40px;
      padding-left:51%;
}

</style>
<script>
	/**
	장바구니 전체 선택
	*/
	function allCheck() {
		var all = document.getElementById("all"); //true, false 값 가져오기 체크 되었는지
		var chkList = document.getElementsByName("chk"); //배열
		if (all.checked) {
			for ( var i in chkList) { //확장 포문
				chkList[i].checked = true;
			}
		} else {
			for ( var i in chkList) {
				chkList[i].checked = false;
			}
		}
	}
	
	/**
	 체크박스 유효성 체크
	 */
	function valCheck() {
		var chkList = document.getElementsByName("chk");
		var count = 0;
		for ( var i in chkList) {
			if (chkList[i].checked)
				count++;
		}

		return count;
	}//valCheck
	
	
	function deleteCheckedProduct() {
		var chkList = document.getElementsByName("chk");
		var pidList = [];
		for ( var i in chkList) {
			if ((chkList[i].checked)  && (chkList[i].value != null)){
				pidList.push(chkList[i].value);
			}
		}
		console.log(pidList);
		location.href = 'http://localhost:9000/sist_project_2/cart/cartCheckedDeleteProc.jsp?pidList='+pidList+"&id=<%=mid%>";
	}
	
	
	
	 $(document).ready(function(){
	
		$(".btn_delete").click(function() {
			console.log("test22");
			console.log(this.value);
			location.href = 'http://localhost:9000/sist_project_2/cart/cartDeleteProc.jsp?pid='+this.value+"&id=<%=mid%>";
		});
	}); 
	
	
</script>
</head>
<body>
   <jsp:include page="../header.jsp" />
   <div>
      <section class="section1">
         <div class="order_lnb">
            <span class="f_red">01 장바구니</span><hr>
            <span>02 주문서 작성</span><hr>
            <span>03 주문완료</span>
         </div>
         <div id="cart_content">
         <form name="orderForm" action="order_form.jsp" method="get" class="order_form">
            <div id="title">장바구니</div>
            <div id="sub_title">주문하실 상품을 선택해주세요</div>
            <table class="order_product">
               <tr>
                  <th class="w10">
                  	 <input type="checkbox" id="all" onchange="allCheck()">
                  </th>   
                  <th colspan="2">상품정보</th>      
                  <th class="w130">단가</th>      
                  <th class="w130">수량</th>
                  <th class="w130">상품금액</th>         
                  <th class="w100">주문</th>         
               </tr>
               <% for (cartVO vo : cartList) {%>
               <tr class="mainProduct">
                  <td class="w10_checkBox">
                  	 <input type="checkbox" name="chk" value=<%= vo.getPid() %>>
                  </td>
                  <td>
                     <a href="http://localhost:9000/sist_project_2/product_detail/product_detail.jsp?=<%= pid%>">
                        <img src = "../upload/<%= vo.getSimg1() %>" id="change" width='200px' height='200px;' >
               </a>
                  </td>
                  <td class="productInfo">
                     <span class="f_bold"><%= vo.getPname() %></span>
                     <br>
                     <span><%= vo.getPinfo() %></span>
                     <br>
                     <br>
                     <br>
                     <br>
                     <br>
                     <span style="vertical-align: bottom;">
                        <b>[필수] &nbsp; &nbsp;</b>
                        색상 : 
                        <span><%= vo.getColor() %></span>
                     </span>
                  </td>
                  <td class="mainPrice"><%= vo.getPrice() %>원</td>
                  <td class="mainQty"><%= vo.getC_qty() %></td>
                  <td class="groupPrice"><%= vo.getPrice() * vo.getC_qty() %>원</td>
                  <td>
                     <button type="button" class="btn_delete" value=<%= vo.getPid()%>>삭제하기</button>
                  </td>
               </tr>
               <% } %>
            </table>
            <div style="padding:70px 70px;">
               <input type="button" value="선택상품삭제" onClick='deleteCheckedProduct()'>
               <span class="totalPrice">
               총 상품금액
               <span class="totalPrice"> &nbsp; &nbsp;<%= totalcount %>원</span>
               </span>   
            </div>
            <div id="cart_btn">
               <button type="button" id="select_order">선택상품 주문</button>
               <button type="button" id="all_oreder">전체상품 주문</button>
            </div>
            </form>
         </div>
      </section>
   </div>
   <jsp:include page="../nibangBanner.jsp"/>
   <jsp:include page="../footer.jsp" />
</body>
</html>
<%}else {%>
<%out.println("<script>alert('로그인 후 사용가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%>