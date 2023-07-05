<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
</head>
<body>
<!-- body와 body 사이를 document라고 함 -->
	<form name="frm">
		<p>이름: <input type="text" name="name" required></p>
		<!-- checkform(): 핸들러함수   -->
		<p><input type="button" value="전송" onclick="checkForm();"></p>
	</form>
<script>
	function checkForm() {
		// 정규표현식 선언
		let regExp = /Java/i;	//i: ignpre 대소문자를 구별하지 않음
		let str = document.frm.name.value;	//Java Server Page
		let result = regExp.exec(str);	//글자 찾음(추출). Java
		//result: Java
		console.log("result : " + result);
	}
</script>
</body>
</html>