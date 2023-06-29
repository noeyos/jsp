<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%!	// 선언문 태그
	int mul(int num1,int num2) {
		return num1 * num2;
	}
%>


<%	// 전역메소드를 호출
	for(int i=2; i<=9; i++) {
		for(int j=1; j<=9; j++) {
			out.print("<p>" + i + "X" + j + " = " + mul(i,j) + "</p>");
		}
	}

%>
</body>
</html>