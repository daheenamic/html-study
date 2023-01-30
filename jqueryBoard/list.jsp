<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
	h1{
		text-align: center;
	}
	a {
		margin: 15px 5px;
	}
	button{	
		margin: 15px 5px;
	}
	button:hover{
		cursor: pointer;
	}
	.dataRow:hover{
		background: #eee;
		cursor: pointer;
	}
	#container{
		width: 100%;
		margin: 0 auto;
	}
	#dataTable{
		width: 100%;
	}
	#dataTable th{
		background: black;
		color: white;
	}
	#dataTable td{
		border: 1px solid #aaa;
		text-align: center; /* 텍스트 가운데 정렬 */
	}
	#dataTable th, #dataTable td{
		padding: 10px;
	}
	#dataTable td.left{ /* 제목만 왼쪽 정렬하기 */
		text-align: left;
	}
</style>
<script type="text/javascript">
	$(function(){
		// 한줄 데이터 이벤트 처리 -> 보기로 보낸다.
		$(".dataRow").click(function(){
			location='/jqueryBoard/view.jsp';
		});
	});
</script>
</head>
<body>
	<div id="container">
		<h1>게시판 리스트</h1>
		<!-- table - thead,tbody,tfooter - tr - th,td -->
		<table id="dataTable">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr class="dataRow">
					<td>10</td>
					<!-- 제목만 왼쪽정렬 하기 위해서 따로 class를 줬다. -->
					<td class="left">안녕하세요</td>
					<td>테스트1</td>
					<td>2023-01-18</td>
					<td>10</td>
				</tr>
				<tr class="dataRow">
					<td>9</td>
					<td class="left">점심 메뉴 추천 해 주세요</td>
					<td>테스트2</td>
					<td>2023-01-18</td>
					<td>7</td>
				</tr>
				<tr class="dataRow">
					<td>8</td>
					<td class="left">교실이 너무 추워요</td>
					<td>테스트3</td>
					<td>2023-01-18</td>
					<td>4</td>
				</tr>
			</tbody>
		</table>
		<a href="/jqueryBoard/writeForm.jsp"><button>글등록</button></a>
	</div>
</body>
</html>