<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Write</title>
<!-- CDN 방식의 jQuery 라이브러리 등록 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/regEx.js"></script>
<style type="text/css">
	#container{
		width: 100%;
		margin: 0 auto;
	}
	#writeForm, table{
		margin: 10px 0;
		width: 100%;
	}
	th{
		background: black;
		color: white;
		width : 150px;
	}
	td{
		border: 1px solid #aaa;
	}
	th, td{
		padding: 10px;
	}
	input, textarea{
		background: #eee;
	}
	/* 객체 : focus - 커서가 안으로 들어오는 경우 
		   : hover - 마우스가 올라가는 경우*/
	input:focus, textarea:focus{
		background: white; /* input 영역을 클릭 했을 때 색을 white로 바꿈. */
	}
	input{
		/* 크기 단위 - px : 화면의 점. 
					pt : 종이 인쇄할 때의 점. 
					inch cm mm : 자로 쟀을 때
					em : 1을 기준으로 비례 */
		height: 2em; /* 원래 높이보다 2배 높게 */
	}
	textarea{
		/* resize : 크기변경. none : 크기 변경 안됨 */
		resize: none;
	}
	#writeForm input, #writeForm textarea{
		width: 98%;
	}
	#textLengthCheck {
		width: 98%;
		text-align: right;
	}
	
</style>
<script type="text/javascript">
	$(function(){
		$("#cancleBtn").click(function(){
			history.back();
		});
		
		$("#content").keyup(function(e) {
			let check = $("#content").val();
			$("#textLengthCheck").text(check.length+"/300");
		});
		$("#writeForm").submit(function(){
//			alert("데이터 넘기기 시도 중");
			// 제목 데이터 가져오기 선택.val() - val() : ()안에 값이 없으면 getter, 값이 있으면 setter
			let title = $("#title").val(); // title 값을 가져와서 title 변수에 저장.
			title = title.trim(); // 양 옆 blank 제거 후 title에 저장
 			$("#title").val(title); // title을 다시 값으로 지정 - setter	
 			// 제목 유효성 검사
			if(!test(reg_title, title, reg_title_error_msg)) {
				$("#title").focus();
				return false;
			}
 			// 내용 데이터 가져오기
			let content = $("#content").val();
			content = content.trim();
			$("#content").val(content);	
			// 내용 유효성 검사
			if(!test(reg_content, content, reg_content_error_msg)) {
				$("#content").focus();
				return false;
			}
			// 작성자 데이터 가져오기
			let writer = $("#writer").val();
			writer = writer.trim();
			// 작성자 유효성 검사
			if(!test(reg_writer, writer, reg_writer_error_msg)) {
				$("#writer").focus();
				return false;
			}
			// 비밀번호 데이터 가져오기
			let pw = $("#pw").val();
			pw = pw.trim();
			$("#pw").val(pw);	
			// 비밀번호 유효성 검사
			if(!test(reg_pw, pw, reg_pw_error_msg)) {
				$("#pw").val("");
				$("#pw").focus();
				return false;
			}	
			// 비밀번호 확인 데이터 가져오기
			let pw2 = $("#pw2").val();
			pw2 = pw2.trim();
			// 비밀번호 일치 여부 확인
			if(pw != pw2){
				alert("비밀번호가 일치하지 않습니다.");
				$("#pw").val("");
				$("#pw2").val("");
				$("#pw").focus();
				return false;
			}
			if(!confirm("데이터를 넘겨서 글등록을 진행할까요?")) return false;
							
		});
	});
	
</script>
</head>
<body>
	<div id="container">
		<h1>글등록 폼</h1>
		<hr/>
		form태그는 데이터를 입력 받아서 대상 페이지에 전달하려고 할 때 사용하는 태그<br/>
		action 속성으로 값으로 지정된 페이지로 이동시키기 위해서 submit()이라는 함수를 호출해서 이동시킨다.<br/>
		form 안에 button 태그 클릭하면 기본 타입이 submit이므로 submit() 함수를 호출해서 이동시킨다.<br/>
		form 안에 input 태그인 경우 반드시 type="submit"으로 지정하면 button과 동일한 동작을 한다.<br/>
		데이터를 주소란에 안보이게 하려면 method="post"로 지정하세요.
		<hr/>
		<!-- /board/write는 사람눈에 안보이고 데이터베이스에 저장하고 바로 list로 이동한다 -->
		<form action="/jqueryBoard/write.jsp" id="writeForm" method="post">
			<table>
				<tbody>
					<tr>
						<th>제목</th>
						<td><input name="title" id="title"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
						<textarea name="content" id="content" rows="7"></textarea>
						<div id="textLengthCheck">0/300</div>
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input name="writer" id="writer"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input name="pw" id="pw" type="password"></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<!-- 데이터 넘길 필요 없어서 name은 안씀 -->
						<td><input id="pw2" type="password"></td>
					</tr>
				</tbody>
			</table>
			<!-- 버튼 태그는 반드시 폼태그 안에 있어야 한다. -->
			<!-- 버튼 태그가 form 태그 밖에 있으면 아무 역할도 안하고 모양만 잡혀있는다. -->
			<!-- 텍스트를 클릭 할 경우는 onclick 이벤트를 생성해 주는 게 좋다. -->
			<!-- submit 함수를 호출시켜서 버튼을 누르면 action을 실행 시킨다. -->
			<button type="submit">등록하기</button>
			<button type="button" id="cancleBtn">취소하기</button>
		</form>
	</div>
</body>
</html>