<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
<!-- body와 body 사이를 document라고 함 -->
	<h3>회원 가입</h3>
	<form name="Member" action="validation05_process.jsp" method="post">
		<p>아이디: <input type="text" name="id" required></p>
		<p>비밀번호: <input type="text" name="passwd" required></p>
		<p>이름: <input type="text" name="name" required></p>
		<p>연락처:
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> -
			<input type="text" maxlength="4" size="4" name="phone2" /> -
			<input type="text" maxlength="4" size="4" name="phone3" /> -
		</p>
		<p>이메일 : <input type="text" name="email" /></p>
		<!-- checkMember(): 핸들러함수   -->
		<p><input type="button" value="전송" onclick="checkMember();"></p>
	</form>
<script>
	function checkMember() {
		
		// 정규식은 '/'로 시작해서 '/'로 끝남		
		
		// 1) 아이디는 문자로 시작
		let regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
		// 2) 이름은 한글만 입력 - 시작도 한글, 끝도 한글. ^한글$
		//     + : 한번 이상.   * : 0번 이상
		let regExpName = /^[가-힣]*$/;
		
		// 3) 비밀번호는 숫자만 입력
		let regExpPasswd = /^[0-9]*$/;
		
		// 4) 연락처 형식 준수(010-1111-2222, 010-111-2222)
		// '\d' : 숫자.
		// 숫자{3} : 숫자가 딱 3회 반복.
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		
		// 5) 이메일 형식 준수(tester-_.2a@)
		// ;
	
	}
</script>
</body>
</html>