<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 자바 입니다.
// 데이터 받기 - request 객체에서 꺼내 옵니다.
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String birth = request.getParameter("birth");
String[] tels = request.getParameterValues("tel");
String email = request.getParameter("email");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디 = <%= id %><br/>
비밀번호 = <%= pw %><br/>
이름 = <%= name %><br/>
성별 = <%= gender %><br/>
생년월일 = <%= birth %><br/>
연락처 = <%= String.join("-", tels) %><br/>
이메일 = <%= email %><br/>
</body>
</html>