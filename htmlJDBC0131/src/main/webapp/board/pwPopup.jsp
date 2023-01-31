<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 입력</title>
<script type="text/javascript">
function pwConfirm(pw) {
	opener.document.pw.pw.value = pw;
	window.close();
}
</script>
</head>
<body>
비밀번호 입력 : <input name="pw" id="pw"><br/>
<a href="/board/delete.jsp?no=<%%>&pw=pw">
<button onclick="window.close()">확인</button>
</a>
</body>
</html>