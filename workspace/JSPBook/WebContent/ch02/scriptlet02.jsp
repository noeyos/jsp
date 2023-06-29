<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=0; i<=10; i++){ //0~10
			//짝수일때만
			if(i%2==0) {
				//out: JSP 기본 객체(화면에 출력)
				out.print("<p>" + i + "</p>");
			}
		}
	%>
</body>
</html>