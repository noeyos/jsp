<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% //스크립틀릿
// 	POST 방식
// 	요청URL : exception_process.jsp
// 	요청파라미터 : {num1=12&num2=6}
	
	String num1 = request.getParameter("num1"); //"12"
	String num2 = request.getParameter("num2"); //"6"
	request.getParameter("num3").toString(); //"6"
	
	// 문자를 숫자로 형변환
	int a = Integer.parseInt(num1);		//12
	int b = Integer.parseInt(num2);		//6
	int c = a / b;
	out.print("<p>" + num1 + "/" + num2 + "=" + c + "</p>");
	%>
</body>
</html>