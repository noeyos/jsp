<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
<!-- body와 body 사이를 document라고 함 -->
	<h3>회원 가입</h3>
	<!--
		요청URL : validation-5+process.jsp
		요청파라미터 : {id=a001, passwd=1234, name=개똥이, phone1=010, phone2=1234, phone3=1234,
		email=test@test.co.kr}
		요청방식 : post
	-->
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
			<input type="text" maxlength="4" size="4" name="phone3" />
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
		
		// 5) 이메일 형식 준수(tester-_.2a@korea_3.ac.kr)
		// ^ : 시작   /   $ : 끝    /   ? : 있어도 그만 없어도 그만   /  * : 0 이상 반복
		// {2, 3} : 2 이상 3 이하
		// [a-z] : a부터 z사이 영소문자 중 한 글자
		let regExpEmail = 
		/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i ;
		
		// form : object
		let form = document.Member;
		
		let id = form.id.value;   		//아이디
		let passwd = form.passwd.value; //비밀번호
		let name = form.name.value;		//이름
		let phone = form.phone1.value + "-" +
					form.phone2.value + "-" +
					form.phone3.value;	// 연락처
		let email = form.email.value;	// 이메일   	
		
		// 1) 아이디는 문자로 시작
		if(!regExpId.test(id)) {
			alert("아이디는 문자로 시작해주세요");
			form.id.select();
			return;
		}
		
		// 2) 이름은 한글만 입력
		if(!regExpName.test(name)) {
			alert("이름은 한글만 입력해주세요");
			form.name.select();
			return;
		}
		// 3) 비밀번호는 숫자만 입력
		if(!regExpPasswd.test(passwd)) {
			alert("비밀번호는 숫자만 입력해주세요");
			form.passwd.select();
			return;
		}
		// 4) 전화번호 형식을 준수
		if(!regExpPhone.test(phone)) {
			alert("전화번호 형식을 준수해주세요");
			form.phone.select();
			return;
		}
		// 5) 이메일 형식을 준수
		if(!regExpEmail.test(email)) {
			alert("이메일 형식을 준수해주세요");
			form.email.select();
			return;
		}
		
		//유효성 검사(validation) 통과
	    form.submit();


		
	}
</script>
</body>
</html>