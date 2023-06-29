<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	// 스크립틀릿
	// 1초마다 새로고침
	// response.setIntHeader("Refresh", 1);
%>
<!-- new Date() => Wed Jun 28 12:11:35 KST 2023 -->
<p id="p1"><%= new Date().toLocaleString() %></p>

<script>
function gogo(){
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
	document.getElementById("p1").innerHTML = dateString + " " + timeString;
}
setInterval(gogo, 1000); // 1초마다 gogo 함수를 요청
</script>
</body>
</html>