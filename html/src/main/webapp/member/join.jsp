<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>약관동의</title>
<!-- 외부에 있는 css 스타일 지정할 때 사용하는 코드 -->
<link rel="stylesheet" href="/css/html.css">
<!-- 자바 스크립트 부분 -->
<script type="text/javascript">
	function checkAgree() {
		// checkbox를 찾고 지정한 id를 찾아서 매개변수값에 넣어준다.
		var agreeBox = document.getElementById('agreeTerms');
		// input 태그의 checkbox인 경우 체크가 되어 있으면 true가 나온다.
		// 체크가 되어있지 않으면 false가 나온다.
		var isChecked = agreeBox.checked;
		if (!isChecked){
			alert("약관에 동의를 해주세요."); // 경고창 띄우기
			return false; // 페이지 이동시키지 않는다.	
		} 
	}
</script>
</head>

<body>
	<div id="container">
		<h1>약관동의</h1>
		<textarea rows="12" style="width:100%" readonly="readonly">
여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.

네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.

다양한 네이버 서비스를 즐겨보세요.
네이버는 www.naver.com을 비롯한 네이버 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 네이버 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, 네이버 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.

네이버는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.

이하 생략
		</textarea>	
		<div>
			<input type="checkbox" id="agreeTerms"> 위 약관에 동의합니다.(필수)
		</div>
		<div>
			<!-- 1. 절대 주소 : root부터 작성한다. /member/writeForm.jsp
				 - 단점 : 서버의 path가 달라지면 절대주소에 /path/폴더/자원이름 주소를 전체 다 고쳐야 한다.
				 2. 상대 주소 : 현재 위치부터 작성. 같은 위치에 자원을 위치정보를 작성하지 않는다.
				 join과 writeFrom은 같은 폴더 안에 있기 때문에 상대주소로 써도 된다. 
				 - . : 현재위치, ..: 상위 위치. 정확한 위치를 찾아내는 것이 어렵다.
				 path가 바뀌어도 url은 변하지 않는다. 주소 정보를 고치지 않아도 된다.-->
<!-- 		<a href="./writeForm.jsp"><button>회원 가입 페이지로 이동</button></a> -->
<!-- 		<a href="../member/writeForm.jsp"><button>회원 가입 페이지로 이동</button></a> -->
			<!-- 아무것도 쓰지 않으면 현재 위치를 나타낸다. -->
			<!-- 위의 약관 동의에 체크를 하지 않으면 페이지로 이동을 못하고 경고창을 띄우는 것은 JS로 하면 된다. -->
			<!-- onclick="return false"를 주면 a태그의 페이지 이동이 생기지 않는다. -->
			<a href="writeForm.jsp" onclick="return checkAgree();"><button>회원 가입 페이지로 이동</button></a>
		</div>
	</div>
</body>
</html>