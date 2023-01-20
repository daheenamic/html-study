<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image List</title>
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

	.dataRow:hover{
		background: #A39682;
		color: #fff;
		cursor: pointer;
	}
	#listContainer{
		width: 900px;
		margin: 0 auto;
		font-size: 10pt;
		color: #564F45;
	}
	#dataTable{
		width: 100%;
		border-collapse:collapse;
	}
	#dataTable th{
		border-bottom: 1px solid #aaa;
	}
	#dataTable td{
		border-bottom: 1px solid #aaa;
		text-align: center; 
		height: 50px;
	}
	#dataTable th, #dataTable td{
		padding: 10px;
	}
	#dataTable td.left{ 
		text-align: left;
	}
	#home img:hover{
		cursor: pointer;
	}
</style>
</head>
<body bgcolor=#FFF7EC>
	<div id="listContainer">
	<h1>Image Board List</h1>
<!-- 		<div id="home"> -->
<!-- 			<img alt="home" src="/image/home.png" -->
<!-- 			onclick="location.href='/index.jsp'" -->
<!-- 			style="width:25px; height:25px;"> -->
<!-- 		</div> -->
		<table id="dataTable">
			<thead>
				<tr>
					<th style="width:6%">번호</th>
					<th colspan="2">제목</th>
					<th style="width:15%">작성자</th>
					<th style="width:15%">작성일</th>
					<th style="width:8%">조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr class="dataRow" onclick="location.href='/image/view_dog.jsp'">
					<td>3</td>
					<!-- 제목만 왼쪽정렬 하기 위해서 따로 class를 줬다. -->
					<td class="left">강아지들 귀엽지용</td>
					<td><img alt="강아지사진" src="/image/dog.jpg" style="height: 30px"></td>
					<td>테스트1</td>
					<td>2023-01-20</td>
					<td>10</td>
				</tr>
				<tr class="dataRow" onclick="location.href='/image/view_cat.jsp'">
					<td>2</td>
					<td class="left">귀여운 고양이 사진</td>
					<td><img alt="고양이사진" src="/image/cat.jpg" style="height: 30px"></td>
					<td>테스트2</td>
					<td>2023-01-20</td>
					<td>7</td>
				</tr>
				<tr class="dataRow" onclick="location.href='/image/view_jeju.jsp'">
					<td>1</td>
					<td class="left">제주도 가고 싶다</td>
					<td><img alt="제주도사진" src="/image/jeju.jpg" style="height: 30px"></td>
					<td>테스트3</td>
					<td>2023-01-20</td>
					<td>4</td>
				</tr>
			</tbody>
		</table>
		<a href="/image/writeForm.jsp"><button>글등록</button></a>
	</div>
</body>
</html>