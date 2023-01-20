<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
response.setContentType("text/html;charset=utf-8");
request.setCharacterEncoding("utf-8");
String title = request.getParameter("title");
String content = request.getParameter("content");
String pw = request.getParameter("pw");
response.sendRedirect("/image/list.jsp");
%>