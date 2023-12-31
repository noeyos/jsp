<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>세션 이름 열거</title>
</head>
<body>
<h4>세션 삭제 전</h4>
<%
	// 세션의 모든 세션명을 열거형으로 가져와보자
	Enumeration en = session.getAttributeNames();
	String name;
	String value;
	// 세션명이 없을 때까지 반복
	while(en.hasMoreElements()) {
		// name : 세션명
		name = en.nextElement().toString(); //userId
		// value : 세션에 매핑된 값
		value = session.getAttribute(name).toString(); //admin
		
		out.print("설정된 세션명 : " + name + "<br />");
		out.print("설정된 세션명에 매핑된 값 : " + value + "<br />");
	}
	
	session.removeAttribute("userId");
	
%>

	<h4>세션 삭제 후</h4>
	
<%
	en = session.getAttributeNames();
	while(en.hasMoreElements()) {
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();

		out.print("설정된 세션명 : " + name + "<br />");
		out.print("설정된 세션명에 매핑된 값 : " + value + "<br />");
	}

%>
</body>
</html>