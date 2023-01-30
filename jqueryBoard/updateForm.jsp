<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Update</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style type="text/css">
	#container{
		width: 1000px;
		margin: 0 auto;
	}
	#updateForm, table{
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
	#updateForm input, #updateForm textarea{
		width: 98%;
	}
	
</style>
<script type="text/javascript">
	// 익명함수. 전달되면 변수에 저장. 변수의 이름이 이름이 된다.
	$(function(){
		// 수정폼의 취소버튼에 대한 이벤트
		$("#cancleBtn").click(function(){
			history.back();
		});
		// 폼의 데이터 넘기는 이벤트 처리
		$("#updateForm").submit(function(){
			alert("데이터 넘기기 시도 중");
			// 데이터 유효성 검사 - 정규 표현식 이용
			// 데이터 처리를 할까요?
			// confirm : 메시지로 경고창을 띄우고 확인을 누르면 true가 취소를 누르면 false가 넘어온다.
			if(!confirm("데이터를 넘겨서 수정을 진행할까요?")) return false;
		});
	});
</script>
</head>
<body>
	<div id=container>
		<h1>글수정 폼</h1>
		<hr/>
		form태그는 데이터를 입력 받아서 대상 페이지에 전달하려고 할 때 사용하는 태그<br/>
		action 속성으로 값으로 지정된 페이지로 이동시키기 위해서 submit()이라는 함수를 호출해서 이동시킨다.<br/>
		form 안에 button 태그 클릭하면 기본 타입이 submit이므로 submit() 함수를 호출해서 이동시킨다.<br/>
		form 안에 input 태그인 경우 반드시 type="submit"으로 지정하면 button과 동일한 동작을 한다.
		<hr/>
		<!-- /board/write는 사람눈에 안보이고 데이터베이스에 저장하고 바로 list로 이동한다 -->
		<!-- 비밀번호가 있을때는 데이터를 post 방식으로 넘겨야 비밀번호가 표시되지 않는다. -->
		<form action="/jqueryBoard/update.jsp" id="updateForm" method="post">
			<table>
				<tbody>
					<tr>
						<th>번호</th>
						<!-- 수정을 불가능하게 만들어야 한다 : readonly. 
						input 태그의 값 세팅 : value 속성 사용 -->
						<td><input name="no" id="no" readonly value="10"></td>
					</tr>
					<tr>
						<th>제목</th>
						<!-- input 태그의 값 세팅 : value 속성 사용 -->
						<td><input name="title" id="title" value="안녕하세요"></td>
					</tr>
					<tr>
						<th>내용</th>
						<!-- textarea 태그의 값 세팅 : 태그 사이 사용 -->
						<td><textarea name="content" id="content" 
						rows="7">반갑습니다.
잘 부탁드립니다.</textarea></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><input name="writer" id="writer" value="테스트"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input name="pw" id="pw" type="password"></td>
					</tr>
				</tbody>
			</table>
			<!-- button type 3가지 : 
			submit(기본) - submit() 함수를 만나게 해서 데이터 전송하고 페이지 이동. 기본이라 생략 가능
			reset - 원래 데이터로 복원시켜준다.
			button - 동작 하지 않는다. 동작은 event handler를 이용해서 JS로 작성한다. -->
			<button type="submit">수정하기</button>
			<button type="reset">새로입력</button>
			<button type="button" id="cancleBtn">취소</button>
		</form>
	</div>
</body>
</html>