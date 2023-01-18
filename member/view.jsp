<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberView</title>
<style type="text/css">
	h1{
		border: 1px solid black;
		text-align: center;
		padding: 5px;
	}
</style>
</head>
<body>
	<div class=container>
	<h1>회원 상세정보</h1>
	<table id="dataTable">
		<tbody>
			<tr>
				<th>아이디</th>
				<td>test</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>테스트</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>여자</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>1991-01-01</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>test@naver.com</td>
			</tr>
			<tr>
				<th>등급</th>
				<td>일반회원</td>
			</tr>
			<tr>
				<th>상태</th>
				<td>정상</td>
			</tr>
		</tbody>
	</table>
	<a href="/member/list.jsp"><button>회원리스트</button></a>
	<a href="/member/updateForm.jsp"><button>회원정보변경</button></a>
	<a href="/member/delete.jsp"><button>회원삭제</button></a>
	</div>
</body>
</html>