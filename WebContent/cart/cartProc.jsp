<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"
   import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"%>
<jsp:useBean id="vo" class="com.sist_project_2.vo.cartVO" />
<jsp:setProperty name="vo" property="*" />

<% request.setCharacterEncoding("utf-8"); %>

<%
   String cnt = request.getParameter("cnt");
   String mid = request.getParameter("id");
   String pid = request.getParameter("pid");
   
   	
   int parseCnt = Integer.parseInt(cnt);
   
   vo.setMid(mid);
   vo.setPid(pid);
   vo.setC_qty(parseCnt);
   //System.out.println(parseCnt);
   
   cartDAO dao = new cartDAO();
   boolean result = dao.insertCart(vo);
   
   if (result) {
      response.sendRedirect("cart.jsp?id="+mid);
   } else {
      response.sendRedirect("errorPage.jsp");
   }
   out.write(String.valueOf(result));
%>