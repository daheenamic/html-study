<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Write Form</title>
<style type="text/css">
	h1{
		border: 1px solid black;
		text-align: center;
		padding: 5px;
	}
	#container {
		width: 800px;
		margin: 0 auto;
	}
	#writeForm, table{
		margin: 10px auto;
		width: 70%;
	}
	th{
		background: #206346;
		color: white;
		width : 150px;
	}
	td{
		border: 1px solid #aaa;
	}
	th, td{
		padding: 2px;
	}
	input{
		border: none;
		background: #eee;
		width: 98%;
		height: 2em;
		
	}
	input:focus{
		outline: none;
		background: white;
	}
	#buttons{
		width : 70%;
		margin: 0 auto;
	}
</style>
</head>
<body>
	<div id="container">
	<h1>회원 등록 폼</h1>
	<form action = "/member/write.jsp" id="writeForm" method="post">
		<table>
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input name="id" id="id" readonly value="test"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input name="pw" id="pw" type="password"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input id="pw2" type="password"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input name="name" id="name" readonly value="테스트"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input name="gender" id="gender"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input name="birth" id="birth" type="date"></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input name="email" id="email" type="tel"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input name="email" id="email" type="email"></td>
				</tr>
				<tr>
					<th>회원등급</th>
					<td><input name="grade" id="grade"></td>
				</tr>
				<tr>
					<th>상태</th>
					<td><input name="status" id="status"></td>
				</tr>
			</tbody>
		</table>
		<div id="buttons">
		<button type="submit">등록하기</button>
		<button type="button" onclick="history.back();">취소하기</button>
		</div>
	</form>
	</div>
</body>
</html>