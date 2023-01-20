<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투데이:수다방</title>
<link rel = "stylesheet" href = "/board_css/table.css">
<style type="text/css">
#container{
	width: 1000px;
	margin: 0 auto;
}
#font{
	font-style: italic;
}

</style>
</head>
<body bgcolor="#fff3e6">
<div id ="container">
<h1 id="font">"BLAH, BLAH, BLAH"</h1>
<br>
<table id = "dataTable">
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
		<tr class = "dataRow" onclick="location = 'view.jsp'">
			<td>20</td>
			<td class="left">조합추천</td>
			<td>커피귀신</td>
			<td>2023-01-20</td>
			<td>100</td>
		</tr>
		<tr class = "dataRow" onclick="location = 'view.jsp'">
			<td>19</td>
			<td class="left">메뉴 조합 추천해주세요</td>
			<td>카페인중독</td>
			<td>2023-01-20</td>
			<td>30</td>
		</tr>
		<tr class = "dataRow" onclick="location = 'view.jsp'">
			<td>18</td>
			<td class="left">새해복많이받아</td>
			<td>복복복복덩이</td>
			<td>2023-01-20</td>
			<td>168</td>
		</tr>
		<tr class = "dataRow" onclick="location = 'view.jsp'">
			<td>15</td>
			<td class="left">눈이 또 오네</td>
			<td>눈사람</td>
			<td>2023-01-18</td>
			<td>5</td>
		</tr>
		<tr class = "dataRow" onclick="location = 'view.jsp'">
			<td>14</td>
			<td class="left">출근싫다</td>
			<td>과장님</td>
			<td>2023-01-16</td>
			<td>198</td>
		</tr>
	</tbody>
</table>
<a href = "/board/writeForm.jsp"><button>글 등록</button></a>
<a href = "/index.jsp"><button>홈으로</button></a>
</div>
</body>
</html>