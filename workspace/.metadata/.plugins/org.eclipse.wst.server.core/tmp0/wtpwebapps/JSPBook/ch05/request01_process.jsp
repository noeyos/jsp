<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% // 스크립틀릿
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");	//a001
	String passwd = request.getParameter("passwd");	// java
	
	// 헤더에 있는 host라는 name에 매핑되어있는 값 가져오기
	String hostValue = request.getHeader("host");
	// 헤더에 있는 accept-language라는 name에 매핑되어있는 값 가져오기
	String alValue = request.getHeader("accept-language");
%>

<p> 아이디 : <%=id%> </p>
<p> 비밀번호 : <%=passwd%> </p>
<p> 누구? : <%=hostValue%> </p>
<p> 어떤말사용? : <%=alValue%> </p>
<p> 요청 정보 길이 : <%= request.getContentLength() %></p>
<p> 클라이언트 전송 방식 : <%= request.getMethod() %></p>
<p> 요청 URI : <%= request.getRequestURI() %></p>
<p> 서버 이름 : <%= request.getServerName() %></p>
<p> 서버 포트 : <%= request.getServerPort() %></p>
<a href="request02.jsp"> 모든 헤더 정보 가져오기 </a>