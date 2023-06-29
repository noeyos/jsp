<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<!-- var : JSTL변수
		 value : 값
		 scope : 활용범위
		        (page(동일jsp)/
		 		 request(동일요청)/
		 		 session(동일웹브라우저)/
		 		 application(모든웹브라우저)
	 -->
<%
	// JAVA 변수
	String memId = "소연";
%>
	<!-- JSTL 변수 -->
	<c:set var="memId" value="<%= memId %>" scope="page"/>
	<p>${memId}</p>
	<p><%=memId %>
</body>
</html>