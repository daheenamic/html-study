<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/css/html.css">
<link rel="stylesheet" href="/css/table.css">
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<form action="write.jsp" id="writeForm" method="post">
			<table>
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							<input name="id" id="id" placeholder="아이디" required="required"
							maxlength="20" pattern="[a-zA-Z]\w{3,19}" autocomplete="off"
							title="아이디는 영문, 숫자, _ 만 사용 가능하고 영문자로 시작, 4~20자 사이로 입력">
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input name="pw" id="pw" type="password"
							placeholder="비밀번호" maxlength="20" 
							required="required" pattern=".{4,20}"
							title="비밀번호는 4~20자 사이로 입력하세요.">
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td>
							<input id="pw2" type="password"
							placeholder="비밀번호 확인" maxlength="20" 
							required="required" pattern=".{4,20}"
							title="비밀번호는 4~20자 사이로 입력하세요.">
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input name="name" id="name" 
							placeholder="이름" maxlength="10" autocomplete="off"
							required="required" pattern="[가-힣]{2,10}"
							title="한글로 2~10자만 입력 가능합니다.">
						</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
							<input name="gender" type="radio" value="여자" style="width:50px"> 여자
							<input name="gender" type="radio" value="남자" style="width:50px"> 남자
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<input name="birth" id="birth" 
							placeholder="이름" maxlength="10" autocomplete="off"
							required="required" pattern="[가-힣]{2,10}"
							title="한글로 2~10자만 입력 가능합니다.">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>