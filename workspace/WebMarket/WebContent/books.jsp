<%@page import="java.util.ArrayList"%>
<%@page import="vo.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="dao.BookRepository"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%//스크립틀릿 
	//public BookRepository() { 생성자가 실행됨 
	//기본 생성자. 3개의 상품 정보가 들어있음 
	BookRepository bookDAO = BookRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>

<%//스크립틀릿 
	//SELECT * FROM PRODUCT
	ArrayList<BookVO> listOfBooks = bookDAO.getAllBooks();
%>
<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page"/>
<!-- include 액션 태그 -->
<jsp:include page="menu.jsp" />

<!-- body시작 -->
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">도서 목록</h1>
	</div>
</div>
<div class="container">
	<!-- 행 별 처리 -->
	<div class="col">
		<c:forEach var="book" items="${listOfBooks}" varStatus="stat">
			<div><!-- 열 별 처리 -->
				<p><h3 style="font-weight: bold;">${book.name}</h3></p>
				<p>${book.description}</p>
				<p>${book.author} | ${book.publisher} | ${book.unitPrice}원</p>
				<p><a href="product.jsp?bookId=${book.bookId}"
					class="btn btn-secondary" role="button">
					상세정보</a>
				</p>
				<br><hr><br>
			</div>
		</c:forEach>
	</div>
</div>
<!-- body끝 -->


<!-- footer -->
<jsp:include page="footer.jsp" />
</body>
</html>