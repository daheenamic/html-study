<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성 폼</title>
<style type="text/css">

#writeForm, table{
	margin: 10px 0;
	width: 80%;
}
th{
	background: black;
	color: white;
	width: 50px;
}
td{
	border: 1px solid #aaa;
}
td, th{
	padding: 5px;
}
input, textarea{
	background: #eee;
}
input:focus, textarea:focus{
	background: white;
}
input{
	height: 2.0em;
	width: 98%;
}
textarea{
	resize: none;
	width: 98%;
	height: 100px;
}
button{
	cursor: pointer;
	width : 60px 90px;
	height: 30px;
}
</style>
</head>
<body>
<h1>공지사항 작성 폼</h1>
<form action="/notice/write.jsp" id="writeForm" method="post">
<table class="dataTable">
	<tbody>
		<tr>
			<th>제목</th>
			<td><input id="title" name="title"  required="required" autofocus="autofocus" placeholder="제목 입력란"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="content" name="content" required="required" rows="20" placeholder="내용 입력란"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input id="writer" name="writer" required="required" placeholder="작성자 입력란"></td>
		</tr>
	</tbody>
</table>
<button type="submit">작성완료</button>
<button type="reset">리셋</button>
<button type="button" onclick="history.back();">취소</button>
</form>
</body>
</html>