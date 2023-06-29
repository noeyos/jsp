<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directice Tage</title>
</head>
<body>
<%
	String memId = "이소연";
	memId = URLEncoder.encode(memId);	// 한글처리 (컴퓨터언어로 변환)
%>
	<!-- header를 인클루드(외부 파일을 가져옴) -->
	<%@ include file="include01_header.jsp" %>
	<h4>------ 현재 페이지 영역 ------</h4>
	<!-- footer를 인클루드(외부 파일을 가져옴)
	JSP 내장객체인 request 객체 {요청파라미더 : memId=이소연} 담김
	include디렉티브는 요청파라미터를 전달할 수 없음
	-->
<%-- <%@ include file="include01_footer.jsp?memId="+memId %> --%>
	<!-- 요청URL : include-1_footer.jsp
		 요청파라미터 : memId(name)=이소연(value)
		 요청URI : nclude01_footer.jsp?memId=이소연
		 (URL에 기능 붙은 게 URI)
	-->
	<jsp:include page="include01_footer.jsp">
		<jsp:param value="<%= memId %>" name="memId"/>
	</jsp:include>
</body>
</html>