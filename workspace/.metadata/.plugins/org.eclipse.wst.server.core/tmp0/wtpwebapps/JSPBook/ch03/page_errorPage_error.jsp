<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 문제 발생</title>
</head>
<body>
	<!-- /images : WebContent > images폴더 -->
	<img src="/images/errorpage.jpg" />
	<%
		// exception 내장 객체(isErrorPage="true"일 때 활성화)
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>