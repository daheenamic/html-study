<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<link rel="stylesheet" href="/css/html.css">
<script type="text/javascript">
	function checkAgree() {
		var agreeBox = document.getElementById('agreeTerms');
		var isChecked = agreeBox.checked;
		if (!isChecked) {
			alert("약관에 동의 해 주세요.");
			return false;
		}
	}
</script>
</head>
<body>
	<div id="container">
		<h1>약관동의</h1>
		<textarea rows="12" style="width:100%" readonly="readonly">
반
갑
습
니
다.
여기는
약관
내역이
들어갈
자
리
입
니
다
.
		</textarea>
	<div>
		<input type="checkbox" id="agreeTerms"> (필수) 위 약관의 동의합니다.
	</div>
		<div style="width:150px; margin:10px auto;">
			<a href="writeForm.jsp" onclick="return checkAgree();">
				<button style="padding:5px">회원 가입 하기</button>
			</a>
		</div>
	</div>
</body>
</html>