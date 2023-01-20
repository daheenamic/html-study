<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style type="text/css">
	#container {
		width: 1000px;
		margin: 0 auto;
	}
	#body iframe {
		width: 100%;
		height: 1000px;
		border: none;
		overflow: auto
	}
	#log {
		float: left;
		padding-left: 10px;
		padding-top: 12px;
	}
	#log img{
		width:50px;
		cursor: pointer;
	}
	#nav {
		width: 100%;
		height: 30px;
		text-align: right;
		padding-top: 40px;
	}
	#nav a{
		margin: 20px;
		font-size: 10pt;
		color: black;
		text-decoration: none;
	}
	#nav a:hover{
		color: green;
	}
	#body {
		clear: both;
		margin: 20px 0;
	}
	#body iframe{
		width: 100%;
		height: 1000px;
	}
</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="log">
				<img alt="홈페이지로고" src="home.png"
				onclick="location.href='/index.jsp'">
			</div>
			<div id="nav">
				<a href="/notice/list.jsp" target="bodyFrame">공지사항</a>
				<a href="/goods/list.jsp" target="bodyFrame">상품</a>
				<a href="/image/list.jsp" target="bodyFrame">이미지</a>
				<a href="/board/list.jsp" target="bodyFrame">일반게시판</a>
			</div>
		</div>
		<div id="body">
			<iframe src="/main.jsp" name="bodyFrame"></iframe>
		</div>
		<div id="footer">
		</div>
	</div>
</body>
</html>