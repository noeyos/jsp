<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>페이지 오류</title>
</head>
<style>

</style>
<body>
	<!-- //////// header 시작 (menu.jsp) //////// -->
	<%@ include file="menu.jsp" %>
	<!-- //////// header 끝 //////// -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3">요청하신 페이지를 찾을 수 없습니다</h2>
		</div>
	</div>
	<div class="container">
		<!-- .getRequestURI() : http://localhost/productasdf.jsp
		-->
		<p><%= request.getRequestURI() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a></p>
	</div>
	<!-- //////// footer 시작 (footer.jsp) //////// -->
	<%@ include file="footer.jsp" %>
	<!-- //////// footer 끝 (footer.jsp) //////// -->

</body>
</html>