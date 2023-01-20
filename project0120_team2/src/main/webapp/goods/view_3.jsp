<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2팀:상품상세정보</title>
<style type="text/css">
table{
	margin:10px 0;
}
button{
	margin: 5px;
}
button:hover{
	cursor: pointer;
}
th{
	background: gray;
	color:white;
}
#goodsTable{
	width:80%
}
td, th{
	padding: 1px;
	border:1px solid #aaa;
}
</style>
</head>
<body>
<div>
	<h1>상품 상세정보</h1>
	<table id="goodsTable">
		<tbody>
			<tr>
				<th>번호</th>
				<td>3</td>
			</tr>
			<tr>
				<th>상품이름</th>
				<td>청정원 스페셜 1호 선물세트</td>
			</tr>
			<tr>
				<th>상품사진</th>
				<td>
				<img src="/goods/picture/chung.JPG">
				</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>51,600원</td>
			</tr>
			<tr>
				<th>판매자</th>
				<td>청정원</td>
			</tr>
			<tr>
				<th>배송날짜</th>
				<td>배송비 : 무료 내일(토) 1/21 도착 보장 (24시 내 주문 시 / 서울⋅경기 기준)</td>
			</tr>
			<tr>
				<th>상품번호</th>
				<td>6695507987 - 15488182020</td>
			</tr>
		</tbody>
	</table>
	<a href ="/goods/updateForm.jsp"><button>상품수정</button></a>
	<a href ="/goods/delete.jsp"><button>상품삭제</button></a>
	<button type="button"onclick="history.back()">이전으로</button>
</div>
</body>
</html>