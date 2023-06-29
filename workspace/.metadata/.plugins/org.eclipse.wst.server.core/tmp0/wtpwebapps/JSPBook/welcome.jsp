<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
// out.print(greeting);
// out.print(test);	// 문제발생!
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<!-- //////// header 시작 (menu.jsp) //////// -->
	<%@ include file="menu.jsp" %>
	<!-- //////// header 끝 //////// -->
	<%!	// 선언문(전역변수)
		String greeting = "Welcome to 이소연 World";
		String tagline = "Welcome to 소연이 Market!";
		
	%>
	<c:set var="tagline" value="<%= tagline %>" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
				
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%= tagline %>
				<%
					Date day = new Date();
					// 지역변수 (위에서 사용X, 이 코드 아래에서만 가능)
					String am_pm;
					int hour = day.getHours();
					int minute = day.getMinutes();
					int second = day.getSeconds();
					
					if(hour/12==0){ // 0~11=>0. 정수/정수=>정수
						am_pm = "AM";
					} else { // 12~24=>1 또는 2
						am_pm = "PM";
						// 13~23시면 1~11시로 표현
						hour = hour - 12;
					}
					String CT = hour + ":" + minute + ":" + second
						   + " " + am_pm;
					// JSP의 기본 내장 객체 중 화면에 출력
					out.print("현재 접속 시각 : " + CT + "<br />");
				%>
				<%-- <p>Today is <%=new Date()%></p> --%>
			</h3>
		</div>
	</div>
	<!-- //////// footer 시작 (footer.jsp) //////// -->
	<%@ include file="footer.jsp" %>
	<!-- //////// footer 끝 (footer.jsp) //////// -->
<script>
// 현재시간 처리
function gogo(){
	// JSTL변수를 J/S변수에 할당
	let tagline = "${tagline}";
	console.log("tagline : " + tagline);
	
	//<h3>태그 select(object)
	let h3 = document.getElementsByTagName("h3")[0];
	
	let today = new Date();
	
	console.log(today);
	
	let year = today.getFullYear();
	let month = ('0' + (today.getMonth()+1)).slice(-2);
	let day = ('0' + today.getDate()).slice(-2);
	let dateString = year + "-" + month + "-" + day;
	console.log("dateString : " + dateString); 
	
	let hours = ('0' + (today.getHours()+1)).slice(-2);
	let minutes = ('0' + (today.getMinutes()+1)).slice(-2);
	let seconds = ('0' + (today.getSeconds()+1)).slice(-2);
	
	let timeString = hours + ":" + minutes + ":" + seconds;
	console.log("result : " + dateString + " " + timeString); 
	
	// select
	//document.getElementById("p1").innerHTML = dateString + " " + timeString;
	 h3.innerHTML = tagline + " " + "현재 시각 : " + dateString + " " + timeString;
}
setInterval(gogo, 1000); // 1초마다 gogo 함수를 요청
</script>
</body>
</html>