<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
System.out.println("update.jsp - 글수정"); // 콘솔 출력
// 한글 처리 - 데이터가 들어있는 쪽에 한다 - request 객체에 한다.
request.setCharacterEncoding("utf-8");
// 데이터 수집
String no = request.getParameter("no"); // get.Parameter의 타입은 Long 타입
String title = request.getParameter("title");
String content = request.getParameter("content");
String writer = request.getParameter("writer");
String pw = request.getParameter("pw");
// 확인 - 콘솔 출력
System.out.println("no="+no+", title="+title+", content="+content+", writer="+writer+", pw="+pw);
response.sendRedirect("/jqueryBoard/view.jsp"); // 기본 객체
%>
<!-- 눈에 보이는 페이지가 아니라 바로 view로 돌아가게 한다. -->