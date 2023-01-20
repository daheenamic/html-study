<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2팀:상품등록</title>
<style type="text/css">
#writeForm, table{
	margin: 10px 0;
	width:100%
}
button{
	cursor: pointer;
}
th{
	background: gray;
	color:white;
}
td{
	border:1px solid #aaa;
}
th, td{
	padding:10px;
}
input{
	background:#eee;
	height: 1.5em;
}
input:focus{
	background: white;
}
#writeForm input{
	width:98%
}
</style>
</head>
<body>
	<div>
	<h1>상품 등록</h1>
	<form action="write.jsp" method="post">
	<table>
		<tbody>
			<tr>
			<th title="상품이름입니다.">상품이름</th>
			<td>
			<input name="goodsname" id="goodsname" placeholder="상품이름 입력">
			</td>
			</tr>
			<tr>
			<th>사진</th>
			<td><input name="picture" id="picture" placeholder="사진파일명 입력"></td>
			</tr>
			<tr>
			<th>가격</th>
			<td><input name="price"id="price"placeholder="가격 입력"
			required="required" pattern="^[0-9]*$"
			title="숫자만 입력하세요"></td>
			</tr>
			<tr>
			<th>판매자</th>
			<td><input name="seller"id="seller"placeholder="판매자 입력"></td>
			</tr>
			<tr>
			<th title="발급받으신 번호를 입력해주세요">상품번호</th>
			<td><input name="goodsno"id="goodsno"placeholder="xxxxxxxxx"
			required="required" pattern="[0-9]{9}"
			style="width:80px"maxlength="9"> - 
			<input name="goodsno"id="goodsno2"placeholder="xxxxxxxxx"
			required="required" pattern="[0-9]{9}"
			style="width:80px"maxlength="9"> 
			</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<button>등록</button>
					<button type="reset">새로입력</button>
					<button type="button" onclick="history.back()">취소</button>
				</td>
			</tr>
		</tfoot>
	</table>
	</form>
	</div>
</body>
</html>