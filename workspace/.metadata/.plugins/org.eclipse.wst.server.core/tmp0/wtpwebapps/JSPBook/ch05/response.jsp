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
		// 해당 URL로 강제 이동(redirection)
		response.sendRedirect("http://www.naver.com");
	%>
</body>
</html>