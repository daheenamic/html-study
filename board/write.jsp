<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
System.out.println("게시판 글등록 처리 - write.jsp"); // 콘솔 출력
// 데이터 수집 - 전달 데이터 받기
String title = request.getParameter("title"); // writeForm에서 name으로 지정했던 것
String content = request.getParameter("content");
String writer = request.getParameter("writer");
String pw = request.getParameter("pw");
System.out.println("title="+title+", content="+content+", writer="+writer+", pw="+pw);
response.sendRedirect("/board/list.jsp"); // 기본 객체
%>
<!-- 눈에 보이는 페이지가 아니라 바로 list로 돌아가게 한다. -->
<!-- 보여줄게 없어서 html 태그를 다 지운다 -->