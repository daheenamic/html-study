<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2팀:상품</title>
<style type="text/css">
h1{
	text-align: center;
}
button:hover {
	cursor: pointer;
}
button {
	margin:10px;
}
th{
	background: #53d3a1;
	color:white;
}
td{
	border : 1px solid #999;
}
th, td{
	padding:  5px;
}
.dataRow:hover{
	background: #aaa;
	cursor: pointer;
}
#goodsTable td.left{
	text-align: left;
}
#goodsTable{
	width:100%
}
#goodsTable th{
	background: #53d3a1;
	color: white;
}
#goodsTable td{
	border: 1px solid #aaa;
	text-align: center;
}
#goodsTable th, #goodsTable td{
	padding: 10px;
}
</style>
</head>
<body>
<div>
<h1>상품 리스트</h1>
<table id="goodsTable">
	<thead>
		<tr>
			<th>번호</th>
			<th>상품이름</th>
			<th>가격</th>
			<th>판매자</th>
			<th>배송날짜</th>
			<th>상품번호</th>
		</tr>
	</thead>
	<tbody>
		<tr class="dataRow"onclick="location='view.jsp'">
			<td>1</td>
			<td class="left">CJ 스팸 선물세트 스팸8호 추석 설 명절</td>
			<td>29,580원</td>
			<td>주식회사 참치</td>
			<td>배송비 : 2000원 내일(토) 1/21 도착 보장 (5시간  내 주문 시 / 서울⋅경기 기준)</td>
			<td>133446504 - 392073304</td>
		</tr>
		<tr class="dataRow"onclick="location='view_2.jsp'">
			<td>2</td>
			<td class="left">동원 프리미엄 참치 현호 추석선물 세트 + 쇼핑백</td>
			<td>139,000원</td>
			<td>주식회사 꽁치</td>
			<td>배송비 : 무료 내일(토) 1/22 도착 보장 (5시간  내 주문 시 / 서울⋅경기 기준)</td>
			<td>6079676240 - 29192901</td>
		</tr>
		<tr class="dataRow"onclick="location='view_3.jsp'">
			<td>3</td>
			<td class="left">청정원 스페셜 1호 선물세트</td>
			<td>51,600원</td>
			<td>청정원</td>
			<td>배송비 : 무료 내일(토) 1/21 도착 보장 (5시간  내 주문 시 / 서울⋅경기 기준)</td>
			<td>6695507987 - 15488182020</td>
		</tr>
	</tbody>
</table>
<a href = "/goods/writeForm.jsp"><button>상품등록</button></a>
<a href = "/index.jsp"><button>메인</button></a>
</div>
</body>
</html>