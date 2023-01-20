<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 보기</title>
<style type="text/css">
table{
	margin: 10px 0;
}
th{
	background: black;
	color: white;
	width: 100px;
}
th, td{
	padding: 10px;
	border: 1px solid #aaa;
}
#dataTable{
	width: 100%;
}
button{
	cursor: pointer;
	width : 60px 90px;
	height: 30px;
}

</style>
</head>
<body>
<h1>공지사항 보기</h1>
<table id="dataTable">
		<tbody>
			<tr>
				<th>번호</th>
				<td>10</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>공지사항 입니다.</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>수업시간에 졸지 않도록 합니다.<br/>선생님의 질문에 대답합시다.</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>관리자1</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>2023.01.20</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>10</td>
			</tr>
		</tbody>
	</table>
<a href="/notice/updateForm.jsp"><button>수정하기</button></a>
<a href="/notice/delete.jsp"><button>삭제하기</button></a>
<a href="/notice/list.jsp"><button>공지리스트</button></a>
</body>
</html>