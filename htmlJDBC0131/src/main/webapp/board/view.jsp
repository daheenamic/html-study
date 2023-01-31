<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@page import="com.webjjang.board.service.BoardViewServiceImpl"%>
<%@page import="com.webjjang.main.Execute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 여기는 자바 입니다.
// 데이터 받기 - no(long) inc(int)
// DB에서 데이터 가져오기 - BoardController - 2번 처리 참고
long no = Long.parseLong(request.getParameter("no")); // list.jsp에서 넘겨준 no를 넘겨받아서 long타입으로 바꿈
int inc = Integer.parseInt(request.getParameter("inc")); // list.jsp에서 넘겨준 inc를 넘겨받아서 int타입으로 바꿈
BoardVO vo = 
(BoardVO)Execute.run(new BoardViewServiceImpl(), new Object[] {no,inc});
%>
<!--  가져온 데이터 출력하기 : BoardPrint.print(vo) 참고 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board View</title>
<style type="text/css">
	.container{
		width: 100%;
		margin: 0 auto;
	}
	table {
		margin: 10px 0;
	}
	th{
		background : black;
		color: white;
	}
	th, td{
		padding: 10px;
		border: 1px solid #aaa;
	}
	#dataTable{
		width: 100%;
	}
</style>
<script type="text/javascript">
	function checkPw() {
		OpenWin = window.open("pwPopup.html","pwCheck","width=600, height=400, top=100, left=200");
	}
</script>
</head>
<body>
	<div class="container">
		<h1>게시판 글보기</h1>
		<table id="dataTable">
			<tbody>
				<%
				if(vo == null) {
				%>
				<tr class="dataRow">
					<!-- colspan="2" 2개의 열을 합침 -->
					<td colspan="2">데이터가 존재하지 않습니다.</td>
				</tr>
				<%
				} else {
				%>
				<tr>
					<th>번호</th>
					<td><%=vo.getNo()%></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><%=vo.getTitle()%></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><%=vo.getContent()%></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=vo.getWriter()%></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><%=vo.getWriteDate()%></td>
				</tr>
				<tr>
					<th>조회수</th>
					<td><%=vo.getHit()%></td>
				</tr>
				<%
				} // end of if
				%>
			</tbody>
		</table>
		<a href="/board/list.jsp"><button>글목록</button></a>
		<a href="/board/updateForm.jsp?no=<%=vo.getNo()%>&inc=0"><button>글수정</button></a>
		<button onclick="checkPw();">글삭제</button>

	</div>
</body>
</html>