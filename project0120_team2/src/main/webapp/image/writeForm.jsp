<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image write</title>
<link rel="stylesheet" href="/image/image.css">
<style type="text/css">
textarea{
	resize: none;
}
input, textarea{
	width: 100%;
	background: #FFF7EC;
	border: none;
}
input:focus, textarea:focus{
	outline: none;
	
}
#dataTable{
	border-collapse: separate;
}
</style>
</head>
<body>
	<div id="imageContainer">
	<h1>Image Write Form</h1>
	<form action="/image/write.jsp" id="writeForm" method="post">
		<table id="dataTable">
			<tbody>
				<tr>
					<th>제목</th>
					<td>
						<input name="title" id="title" placeholder="제목"
						onfocus="this.placeholder = ''" required="required">
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<textarea name="content" id="content" rows="30"
					placeholder="내용을 입력 해 주세요." onfocus="this.placeholder=''"
					required="required"></textarea>
					</td>
				</tr>
				<tr>
					<th>파일첨부</th>
					<td>
						<input name="imageFile" id="imageFile" type="file"
						accept=".jpg, .jpeg, .png">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input name="pw" id="pw" type="password" 
						placeholder="비밀번호" onfocus="this.placeholder=''"
						required="required">				
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td>
						<input id="pw2" type="password" 
						placeholder="비밀번호 확인" onfocus="this.placeholder=''"
						required="required">				
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2" style="border:none">
						<button onclick="location='/image/write.jsp'">등록하기</button>
						<button type="reset">새로입력</button>
						<button onclick="location='/image/list.jsp'">취소하기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
	</div>
</body>
</html>