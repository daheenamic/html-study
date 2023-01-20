<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투데이:글수정</title>
<link rel="stylesheet" href="/board_css/table.css">
<style type="text/css">

#container{
	width: 1000px;
	margin: 0 auto;
}
</style>
</head>
<body bgcolor="#fff3e6">
<div id = "container">
	<h1>수정하기</h1>
	<hr/>
	<br>
	<form action="/board/update.jsp" id = updateForm method = "post">
		<table>
			<tbody>
				<tr>
					<th>번호</th>
					<td><input name="no" id="no" readonly value="19"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input name="title" id="title" value="음료추천"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="content" row="10">추천해주소~</textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="writer" id="writer"  value="카페인중독"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input name="pw" id="pw" type="password"></td>
				</tr>
			</tbody>
		</table>
		<button type="submit">수정 등록</button>
		<button type="reset">새로 입력</button>
		<button type="button" onclick="history.back();">취소</button>
	</form>
</div>
</body>
</html>