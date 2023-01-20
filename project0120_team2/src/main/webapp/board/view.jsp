<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투데이:글보기</title>
<link rel = "stylesheet" href = "/board_css/table.css">
<style type="text/css">

 
#container{
	width: 1000px;
	margin: 0 auto;
}
</style>
</head>
<body bgcolor="#fff3e6">
<div id = "container">
<h1>수다방 글보기</h1>
<hr/>
<br>
	<table id = "dataTableView">
	<tbody>
		<tr>
			<th>번호</th>
			<td>19</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>메뉴 조합 추천해주세요</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>
				자주가는 카페인데 아메리카노 말고 <br>
				다른걸 마셔보고싶어!<br>
				메뉴 조합이나 메뉴 추천 부탁해요!
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>카페인중독</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>2023-01-20</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>30</td>
		</tr>
	</tbody>
	</table>
<a href = "/board/updateForm.jsp"><button>수정하기</button></a>
<a href = "/board/delete.jsp"><button>삭제하기</button></a>
<a href = "/board/list.jsp"><button>수다방 리스트</button></a>
</div>
</body>
</html>