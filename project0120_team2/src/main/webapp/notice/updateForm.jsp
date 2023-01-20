<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 폼</title>
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
<h1>공지사항 수정 폼</h1>
<h3>제목, 내용, 작성자 만 수정 가능합니다.</h3>
<form action="/notice/update.jsp" id="updateForm" method="post">
	<table class="dataTable">
		<tbody>
			<tr>
				<th>번호</th>
				<td><input id="no" name="no" readonly value="10" ></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input id="title" name="title" value="공지사항 입니다." required="required" autofocus="autofocus" ></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea id="content" name="content" required="required" rows="20" >수업시간에 졸지 않도록 합니다.
선생님의 질문에 대답합시다.</textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input id="writer" name="writer" value="관리자1" required="required" ></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><input id="writeDate" name="writeDate" value="2023.01.20" ></td>
			</tr>
			<tr>
				<th>조회수</th>
				<td><input id="hit" name="hit" value="10" readonly></td>
			</tr>
		</tbody>
	</table>
<button type="submit">작성완료</button>
<button type="reset">리셋</button>
<button type="button" onclick="history.back();">취소</button>
</form>
</body>
</html>