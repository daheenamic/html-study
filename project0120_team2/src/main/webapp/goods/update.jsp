<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
System.out.println("상품 수정 처리");//콘솔 출력
//데이터 수집
String no = request.getParameter("no");
String goodsname = request.getParameter("goodsname");
String price = request.getParameter("price");
String seller = request.getParameter("seller");
String deliveryDate = request.getParameter("deliveryDate");
String goodsno = request.getParameter("goodsno");
// 확인
System.out.println("no="+no+",goodsname="+goodsname+",price="+price+",seller="
+seller+",deliveryDate="+deliveryDate+",goodsno="+goodsno);
response.sendRedirect("/goods/view.jsp");
%>