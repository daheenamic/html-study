<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board View</title>
<style type="text/css">
	.container{
		width: 1000px;
		margin: 0 auto;
	}
	table {
		margin: 10px 0;
	}
	th{
		background : black;
		color: white;
	}
	th, td{
		padding: 10px;
		border: 1px solid #aaa;
	}
	#dataTable{
		width: 100%;
	}
	
</style>
</head>
<body>
	<div class="container">
		<h1>게시판 글보기</h1>
		<table id="dataTable">
			<tbody>
				<tr>
					<th>번호</th>
					<td>10</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>안녕하세요</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					반갑습니다. 잘 부탁 드립니다.<br/>
					줄바꿈은 &lt;br/&gt;을 사용하세요.<br/>
					공백문자는 &amp;nbsp;를 사용하세요.
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>테스트1</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td>2023-01-18</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>10</td>
				</tr>
			</tbody>
		</table>
		<a href="/board/list.jsp"><button>글목록</button></a>
		<a href="/board/updateForm.jsp"><button>글수정</button></a>
		<a href="/board/delete.jsp"><button>글삭제</button></a>
	</div>
</body>
</html>