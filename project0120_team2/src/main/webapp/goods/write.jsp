<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
System.out.println("상품 등록 처리");//콘솔 출력
//데이터 수집
String goodsname = request.getParameter("goodsname");
String picture = request.getParameter("picture");
String price = request.getParameter("price");
String seller = request.getParameter("seller");
String goodsno = request.getParameter("goodsno");
//확인
System.out.println("goodsname="+goodsname+",picture="+picture+",price="+price+",seller="
+seller+",goodsno="+goodsno);
response.sendRedirect("/goods/list.jsp");
%>