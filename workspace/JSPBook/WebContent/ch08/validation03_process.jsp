<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<h3>입력에 성공했습니다</h3>
<!-- 요청URL : validation03_process.jsp
		 요청파라미터(HTTP파라미터, QueryString) : {id=a001, passwd=java}
-->
<%
	//문자 인코딩 유형 처리
	request.setCharacterEncoding("utf-8");
	//request객체 :
	//jsp 내장 객체(session, application, out, response, pageContext...)
	String id = request.getParameter("id");	//a001
	String passwd = request.getParameter("passwd");	//java
%>

<p>아이디: <%=id%></p>
<p>비밀번호: <%=passwd%></p>