<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
	요청URL : response01_process.jsp
	요청파라미터 : {id=(입력한내용)&passwd=(입력한내용)}
-->

<%
	String id = request.getParameter("id"); //a001
	String passwd = request.getParameter("passwd"); //java
	
	//분기
	if(id.equals("a001")&&passwd.equals("java")) { // 관리자 맞음
		response.sendRedirect("response01_success.jsp");
	} else { // 관리자가 아님
		response.sendRedirect("response01_failed.jsp");
	}
%>