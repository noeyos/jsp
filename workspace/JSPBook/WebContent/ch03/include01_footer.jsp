<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String memId = request.getParameter("memId"); // 이소연
	memId = URLDecoder.decode(memId);	// 한글처리 (컴퓨터언어에서 한글로 변환)
%>
Copyright &copy;<%=memId%>