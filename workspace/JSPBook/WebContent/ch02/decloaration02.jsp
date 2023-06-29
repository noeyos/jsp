<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%! // 선언문 태그
	// num1, num2 : 정수형 매개변수
	// 리턴 타입(정수형)
	// 정역 메소드
	int sum(int num1, int num2) {
		return num1+ num2;
	}
%>

<%
	// sum이라는 전역메소드를 호출(두개의 파라미터 전달)
	out.println("2 + 3 = " + sum(2, 3));
%>
</body>
</html>