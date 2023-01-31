<%@page import="com.webjjang.board.service.BoardUpdateServiceImpl"%>
<%@page import="com.webjjang.main.Execute"%>
<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
System.out.println("update.jsp - 글수정"); // 콘솔 출력
// 한글처리
request.setCharacterEncoding("utf-8");
// 데이터 수집
BoardVO updateVO = new BoardVO();
long no = Long.parseLong(request.getParameter("no"));
updateVO.setNo(no);
updateVO.setTitle(request.getParameter("title"));
updateVO.setContent(request.getParameter("content"));
updateVO.setWriter(request.getParameter("writer"));
updateVO.setPw(request.getParameter("pw"));
Execute.run(new BoardUpdateServiceImpl(), updateVO);
response.sendRedirect("/board/view.jsp?no="+no+"&inc=0");
%>