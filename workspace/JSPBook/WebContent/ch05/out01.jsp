<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object</title>
</head>
<body>
<%
	out.print("오늘의 날짜 및 시간 : ");
	out.println(Calendar.getInstance().getTime());
	out.print("개똥이");

%>
</body>
</html>