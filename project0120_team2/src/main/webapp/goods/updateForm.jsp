<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<style type="text/css">
button {
	cursor: pointer;
	margin:5px;
}
table{
	width:100%
}
th{
	background : gray;
	color: white;
	width:200px;
}
td{
	border:1px solid #aaa;
}
td, th{
	padding: 5px;
}
td > input, td > textarea{
	width:97%
}
td > input{
	height: 1.7em;
}
</style>
</head>
<body>
<h1>상품수정 폼</h1>
<hr/>
<form action="/goods/update.jsp"id="updateForm" method="post">
	<table>
	<tbody>
	<tr>
		<th>번호</th>
		<td><input name="no"id="no" readonly value="수정불가"></td>
	</tr>
	<tr>
	    <th>상품이름</th>
		<td><input name="goodsname" id="goodsname" placeholder="수정할 상품 이름"></td>
	</tr>
	<tr>
		<th>가격</th>
		<td><input name="price" id="price" placeholder="수정할 가격"
		required="required" pattern="^[0-9]*$"
			title="숫자만 입력하세요"></td>
	</tr>
	<tr>
		<th>판매자</th>
		<td><input name="seller"id="seller"placeholder="판매자 이름"></td>
	</tr>
	<tr>
		<th title="배송비 : 2000원 내일(토) 1/21 도착 보장 (24시 내 주문 시 / 서울⋅경기 기준)기본">배송날짜</th>
		<td><input name="deliveryDate"id="deliveryDate"placeholder="배송날짜"></td>
	</tr>
	<tr>
		<th>상품 번호</th>
		<td><input name="goodsno"id="goodsno"placeholder="xxxxxxxxx"
		 pattern="[0-9]{9}"
		style="width:80px"maxlength="9"> -
		<input name="goodsno"id="goodsno2"placeholder="xxxxxxxxx"
		 pattern="[0-9]{9}"
		style="width:80px"maxlength="9">
		</td>
	</tr>
	</tbody>
	</table>
	<button type="submit">수정</button>
	<button type="reset">새로입력</button>
	<button type="button" onclick="history.back()">취소</button>
</form>
</body>
</html>