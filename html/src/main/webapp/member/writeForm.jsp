<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/css/html.css">
<link rel="stylesheet" href="/css/table.css"> 
<style type="text/css">
	th {
		width: 20%;
	}
</style>
</head>
<body>
	<div id="container">
		<h1>회원가입</h1>
		<form action="write.jsp" id="writeForm" method="post">
			<!-- table - caption - thead, tbody, tfoot - tr - th, td - data-->
			<!-- table 태그 쓰면 legend 태그 쓰지 못함. 쓰려면 다른 태그 이용해야 한다. -->
			<table>
				<tbody>
					<tr>
						<!-- title : 테이블에 마우스를 갖다 대면 나오는 풍선 도움말 -->
						<th>아이디</th>
						<td>
							<!-- placeholder : 데이터가 비어있는 경우 배경글자
								 required : 필수 입력. pattern : 유효성 검사
								 autocomplete : 자동완성기능(on/off) 
								 title : 풍선 도움말. 
								 -> input tag의 패턴과 같이 쓰면 데이터가 유효하지 않을 때 나타나는 메시지-->
							<input name="id" id="id" placeholder="아이디"
							required="required" maxlength="20"
							pattern="[a-zA-Z]\w{3,19}" autocomplete="off"
							title="아이디는 영숫자_ 영문자로 시작 해야 하고 4~20자 사이로 입력하세요.">
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input name="pw" id="id" type="password"
							placeholder="비밀번호" maxlength="20"
							required="required" pattern=".{4,20}"
							title="비밀번호는 4~20자 사이로 입력하세요.">
						</td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td>
							<input id="pw2" type="password"
							placeholder="비밀번호 확인" maxlength="20"
							required="required" pattern=".{4,20}"
							title="비밀번호는 4~20자 사이로 입력하세요.">
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input name="name" id="name"
							placeholder="이름" maxlength="10" autocomplete="off"
							required="required" pattern="[가-힣]{2,10}"
							title="한글로만 2~10자 입력 가능합니다.">
						</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>
							<!-- type="radio" : 같은 이름의 input 태그가 여러개 있다.
								 그 중에 하나만 선택 할 수 있다. -->
							<input name="gender" type="radio" value="여자" style="width:50px"> 여자
							<input name="gender" type="radio" value="남자" style="width:50px"> 남자
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<input name="birth" id="birth" placeholder="ex) 19910101"
							required="required" pattern="[19|20]\d{6}[0-9]" autocomplete="off"
							title="생년월일은 YYYYMMDD 형식으로 연속된 숫자 8자를 입력 해 주세요.">
						</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>
							<!-- name="tel"이 3개가 있다. 배열로 받는다.
								 request.getParameterValues("tel") -->
							<select name="tel" id="tel1" style="height:2.2em">
								<option>010</option>				
								<option>02</option>				
								<option>031</option>				
								<option>032</option>				
								<option>033</option>				
								<option>041</option>				
								<option>042</option>				
								<option>043</option>				
								<option>051</option>				
								<option>052</option>					
							</select> - 
							<input name="tel" id="tel2" pattern="[0-9]{3,4}" 
							maxlength="4" style="width:50px; border:1px solid #aaa"> - 
							<input name="tel" id="tel3" pattern="[0-9]{4}" 
							maxlength="4" style="width:50px; border:1px solid #aaa">
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input name="email" id="email" placeholder="ex) abcd@naver.com"
							required="required" autocomplete="off"
							pattern="[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}"
							title="이메일 형식은 abcd@naver.com으로 입력 해 주세요.">
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<!-- 2칸을 합친것. 위의 tbody는 칸이 2개여서 여기서는 합쳐서 쓰면 된다. 
							 지정을 하지 않으면 <th>에 해당하는 한 칸에 모든 내용이 다들어가게 되고
							 그 옆칸은 빈 칸이 되기 때문에 tbody에서 구현한 칸 수 만큼 합쳐야 맞는다.-->
						<td colspan="2" style="border:none">
							<button>가입하기</button>
							<button type="reset">새로입력</button>
							<!-- history.go(-2) : 전전페이지로 돌아간다. -->
							<!-- /뒤에 아무것도 쓰지 않으면 index.html으로 간다. -->
							<button type="button" onclick="location='/'">취소하기</button>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>