<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
System.out.println("게시판 글 수정 등록 - update.jsp");

//데이터수집
String no = request.getParameter("no");
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
String pw = request.getParameter("pw");
//콘솔확인
System.out.println("no="+no+", title="+title+", content="+content
+", writer="+writer+", pw="+pw);
response.sendRedirect("/board/view.jsp");
%>