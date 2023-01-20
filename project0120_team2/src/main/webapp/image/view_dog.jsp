<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dog</title>
<link rel="stylesheet" href="/image/image.css">
</head>
<body bgcolor=#FFF7EC>
	<div id="imageContainer">
	<h1>Image Board View</h1>
	<table id="dataTable">
		<tbody>
			<tr>
				<th>번호</th>
				<td>3</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>강아지들 귀엽지용</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<img alt="강아지사진" src="/image/dog.jpg"><br/>
					귀여운 강아지 사진
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>테스트1</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>2023-01-20</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>10</td>
			</tr>
		</tbody>
	</table>
	<a href="/image/list.jsp"><button>글목록</button></a>
	<a href="/image/updateForm_dog.jsp"><button>글수정</button></a>
	<a href="/image/delete.jsp"><button>글삭제</button></a>
	</div>
</body>
</html>