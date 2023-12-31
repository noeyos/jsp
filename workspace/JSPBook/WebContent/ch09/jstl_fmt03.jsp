<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>국제화</h2>
	<!-- 2023.07.07 -->
	<p><fmt:formatDate value="<%= new Date() %>" type="date" /><p>
	<!-- 오전 9:39:57 -->
	<p><fmt:formatDate value="<%= new Date() %>" type="time" /><p>
	<!-- 2023. 7. 7 오전 9:39:57 -->
	<p><fmt:formatDate value="<%= new Date() %>" type="both" /><p>
	<!-- 23. 7. 7 오전 9:40 -->
	<p><fmt:formatDate value="<%= new Date() %>" type="both"
		dateStyle="short" timeStyle="short" /><p>
	<!-- 가장 많이 사용됨! Oracle Date 자료형 -->
	<p><fmt:formatDate value="<%= new Date() %>" type="both"
		pattern="yyyy-MM-dd" /><p>
	<p><fmt:formatDate value="<%= new Date() %>" type="both"
		pattern="yyyy-MM-dd hh:mm:ss" /><p>
	
</body>
</html>
