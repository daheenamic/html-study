<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	table > caption{
		border: 2px solid #888;
		background: #206346;
		color : white;
		text-align: center;
	}
	table{
		margin: 20px auto;
	}
	.green{
		color: green;
	}
	.red{
		color: red;
	}
	.blue{
		color: blue;	
	}
	h1{
		border: 1px solid black;
		text-align: center;
		padding: 5px;
	}
</style>
</head>
<body>
	<div class="container">
	<h1>&lt;회원 목록&gt;</h1>
	<hr>
	<table class="table table-hover">
		<caption>회원 리스트</caption>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>성별</th>
				<th>회원등급</th>
				<th>회원상태</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>admin</td>
				<td>관리자</td>
				<td>여</td>
				<td>관리자</td>
				<td><span class="blue">정상</span></td>
			</tr>
			<tr onclick="location.href='/member/view.jsp'" style="cursor:pointer;">
				<td>test</td>
				<td>테스트</td>
				<td>여</td>
				<td>일반회원</td>
				<td><span class="blue">정상</span></td>
			</tr>
			<tr>
				<td>test1</td>
				<td>테스트</td>
				<td>남</td>
				<td>일반회원</td>
				<td><span class="green">휴면</span></td>
			</tr>
			<tr>
				<td>test2</td>
				<td>테스트</td>
				<td>여</td>
				<td>일반회원</td>
				<td><span class="red">탈퇴</span></td>
			</tr>
		</tbody>
	</table>
	<a href="/member/writeForm.jsp">
		<button>회원 등록</button>
	</a>
	</div>
</body>
</html>