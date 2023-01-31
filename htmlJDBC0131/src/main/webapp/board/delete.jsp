
<%@page import="com.webjjang.board.service.BoardDeleteServiceImpl"%>
<%@page import="com.webjjang.main.Execute"%>
<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
System.out.println("delete.jsp - 글삭제"); // 콘솔 출력
BoardVO deleteVO = new BoardVO();
long no = Long.parseLong(request.getParameter("no"));
deleteVO.setNo(no);
int result = (int)Execute.run(new BoardDeleteServiceImpl(), deleteVO);
response.sendRedirect("/board/list.jsp"); // 기본 객체
%>
<!-- 눈에 보이는 페이지가 아니라 바로 list로 돌아가게 한다. -->