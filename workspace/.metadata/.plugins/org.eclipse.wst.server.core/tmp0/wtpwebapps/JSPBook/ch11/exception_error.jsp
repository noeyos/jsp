<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
img {
	width: 300px;
	height: 300px;
}
</style>
<body>
<img src="/images/error.png" />
<p>예외 : <%= exception %></p>
<p>예외 : <%= exception.toString() %></p>
<p>getClass().getName() : <%= exception.getClass().getName() %></p>
<p>getMessage() : <%= exception.getMessage() %></p>
</body>
</html>