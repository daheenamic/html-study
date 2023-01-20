<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 리스트</title>
<style type="text/css">
h1{
	text-align: center;
}
button{
	cursor: pointer;
	width : 60px 90px;
	height: 30px;
}
button:hover{
	cursor: pointer;
}

.dataRow:hover{
	background: #eee;
	cursor: pointer;
}
#dataTable td.left{
	text-align: left;
}
#dataTable{
	width: 100%
}
#dataTable th{
	background: black;
	color: white;
}
#dataTable td{
	border: 1px solid #aaa;
	text-align: center;
}
#dataTable th, #dataTable td{
	padding: 10px;	
}
</style>
</head>
<body>
<h1>공지사항 리스트</h1>
<br/>
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
		<tr class="dataRow" onclick="location='view.jsp'">
			<td>10</td>
			<td class="left">공지사항 입니다.</td>
			<td>관리자1</td>
			<td>2023.01.20</td>
			<td>10</td>			
		</tr>
		<tr class="dataRow" onclick="location='view.jsp'">
			<td>9</td>
			<td class="left">이전 공지사항 입니다.</td>
			<td>관리자2</td>
			<td>2023.01.10</td>
			<td>20</td>			
		</tr>
		<tr class="dataRow" onclick="location='view.jsp'">
			<td>8</td>
			<td class="left">이전전 공지사항 입니다.</td>
			<td>관리자3</td>
			<td>2023.01.1</td>
			<td>30</td>			
		</tr>
	</tbody>
	<tfoot>
	</tfoot>
</table>
<a href="/notice/writeForm.jsp"><button>공지사항 등록하기</button></a>
</body>
</html>