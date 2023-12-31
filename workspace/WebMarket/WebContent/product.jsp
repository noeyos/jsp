<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="vo.BookVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	//싱글톤 : 메모리에 객체가 1회 생성. 전역 변수처럼 어디서든 공유해서 사용가능
	BookRepository BookDAO = BookRepository.getInstance();
	
%>
<!DOCTYPE html>
<html>
<head>
<!-- 링크 렐르 흐 -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>상품 상세 정보</title>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 상세 시작 -->
	<div class="jumbotron">
		<!-- container : 이 안에 내용이 있다 -->
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
<%
	//스크립틀릿
	//요청URI : product.jsp?=productId=P1234
	//요청URL : product.jsp
	//요청파라미터 : productId=P1234
	//요청방식 : get
	String bookId = request.getParameter("bookId");	//P1234
// 	out.print("productId : " + productId);
	
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
	BookVO book = BookDAO.getBookById(bookId);
// 	out.print("<p>" + product + "</p>");	
%>
<c:set var="book" value="<%= book %>" />
	<!-- 내용 -->
	<div class="container">
		<!-- 1건의 상품. 1행(로우=레코드=튜플) -->
		<div class="row">
			<!-- 6크기의 1열(컬럼=필드=속성=어트리뷰트) -->
			<div class="col">
				<p><h3 style="font-weight: bold;"><%= book.getName() %></h3></p>
				<p><%= book.getDescription() %></p>
				<p>
					<b>도서코드 :</b>
					<span class="badge badge-secondary">
						<%= book.getBookId() %>
					</span>
				</p>
				<p><b>출판사 : </b><%= book.getPublisher() %></p>
				<p><b>저자 : </b><%= book.getAuthor() %></p>
				<p><b>재고수 : </b><%= book.getUnitsInStock() %></p>
				<p><b>총 페이지수 : </b><%= book.getTotalPages() %></p>
				<p><b>출판일 : </b><%= book.getReleaseDate() %></p>
				<p><h3><%= book.getUnitPrice() %>원</h3></p>
				<p>
					<button type="button" class="btn btn-secondary" id="buybook" onclick>도서주문 &raquo;</button>
					<a href="books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
				</p>
				<br><hr><br>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
<script type="text/javascript">
	click = document.querySelector("#buybook");
	click.onclick = function() {
		swal('구매 완료',"도서 구매가 완료되었습니다.",'success');
	}
</script>
</body>
</html>