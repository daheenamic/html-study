<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투데이:글작성</title>
<link rel = "stylesheet" href = "/board_css/table.css">
<style type="text/css">
 
#container{
	width: 1000px;
	margin: 0 auto;
}

</style>
</head>
<body bgcolor="#fff3e6">
<div id = "container">
	<h1>글쓰기</h1>
	<hr/>
	<br>
	<form action="write.jsp" id=writeForm method="post">
		<table>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input name ="title" id="title" autofocus="autofocus" placeholder="제목입력"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name ="content" id="content" rows="10" placeholder="내용입력"></textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name ="writer" id="writer" placeholder="작성자"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input name ="pw" id="pw" type="password" placeholder="비밀번호입력"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input name = "pw2" type="password" placeholder="비밀번호 한번 더 입력"></td>
				</tr>
			</tbody>
		</table>
		<button type="submit" >등록</button>
		<button type="button" onclick ="history.back();">취소</button>
	</form>
</div>

</body>
</html>