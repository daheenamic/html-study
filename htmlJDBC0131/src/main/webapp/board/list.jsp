<%@page import="com.webjjang.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.main.Execute"%>
<%@page import="com.webjjang.board.service.BoardListServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Java 부분입니다. - 오라클에서 데이터를 가져온다. BoardController에서 "1"을 선택한 것과 동일.
// 게시판 리스트 서비스를 실행한다. 저장을 하지 않으면 java로 만들어 주지 않아서 저장을 해야 오류가 사라진다.
@SuppressWarnings("unchecked")
List<BoardVO> list = (List<BoardVO>) Execute.run(new BoardListServiceImpl(), null);
%>
<!-- 가져온 데이터를 표시한다. BoardPrint.print(list) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
<style type="text/css">
h1 {
	text-align: center;
}

a {
	margin: 15px 5px;
}

button {
	margin: 15px 5px;
}

button:hover {
	cursor: pointer;
}

.dataRow:hover {
	background: #eee;
	cursor: pointer;
}

#container {
	width: 100%;
	margin: 0 auto;
}

#dataTable {
	width: 100%;
}

#dataTable th {
	background: black;
	color: white;
}

#dataTable td {
	border: 1px solid #aaa;
	text-align: center; /* 텍스트 가운데 정렬 */
}

#dataTable th, #dataTable td {
	padding: 10px;
}

#dataTable td.left { /* 제목만 왼쪽 정렬하기 */
	text-align: left;
}
</style>
</head>
<body>
	<div id="container">
		<h1>게시판 리스트</h1>
		<!-- table - thead,tbody,tfooter - tr - th,td -->
		<table id="dataTable">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<%
				// 데이터가 없는 경우 처리
				if (list == null || list.size() == 0) {
				%>
				<tr class="dataRow">
					<td colspan="5">데이터가 존재하지 않습니다.</td>
				</tr>
				<%
				} else {
				for (BoardVO vo : list) {
				%>
				<!-- 글 번호와 조회수 1증가를 같이 넘김 key=value & key=value-->
				<tr class="dataRow"
				onclick="location='view.jsp?no=<%=vo.getNo()%>&inc=1'"> <!-- 여기에 blank 있음 안된다!! -->
					<td><%=vo.getNo()%></td>
					<td class="left"><%=vo.getTitle()%></td>
					<td><%=vo.getWriter()%></td>
					<td><%=vo.getWriteDate()%></td>
					<td><%=vo.getHit()%></td>
				</tr>
				<%
				} // end of for 
				} // end of if
				%>
			</tbody>
		</table>
		<a href="/board/writeForm.jsp"><button>글등록</button></a>
	</div>
</body>
</html>