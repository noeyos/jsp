<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
<!-- body와 body 사이를 document라고 함 -->
	<form name="loginForm" action="validation03_process.jsp" method="post">
		<p>아이디: <input type="text" name="id" required></p>
		<p>비밀번호: <input type="text" name="passwd" required></p>
		<!-- checkform(): 핸들러함수   -->
		<p><input type="button" value="전송" onclick="checkForm();"></p>
	</form>
<script>
	function checkForm() {
		let form = document.loginForm;
		// 1) 아이디는 영문 소문자만 입력 가능
		// form.id.value : admin (legnth:5)
		for(i=0; i<form.id.value.length; i++) {
			let ch = form.id.value.charAt(i); //a(0)->d(1)->m(2)->i(3)->n(4)
			// 영문 소문자가 아닌 경우
			if((ch<'a'||ch>'z') && (ch>='A'||ch<='Z') && (ch>='0'||ch<='9')) { 
				alert("아이디는 영문 소문자만 입력 가능합니다.")
				form.id.select();
				return;	 // 함수 멈춤
				// break -> for문 멈춤 (for문 다음으로 오는 코드 실행함)
				// return -> 함수 자체를 멈춤 (for문 다음으로 오는 코드 실행안함)
			} // end for
			// 2) 비밀번호는 숫자만 입력 가능
			// 이것은 숫자가 아니다(isNaN)
			if(isNaN(form.passwd.value)) {
				alert("비밀번호는 숫자만 입력 가능합니다.");
				form.passwd.select();
				return; //함수 멈춤
			}
			// 아이디 및 비밀번호 유효성검사(validation)를 통과시
			form.submit(); // 폼 페이지에 입력된 데이터 값을 서버로 전송(request객체에 담아서)
			
		}
		// 2) 비밀번호는 숫자만 입력 가능
	}
</script>
</body>
</html>