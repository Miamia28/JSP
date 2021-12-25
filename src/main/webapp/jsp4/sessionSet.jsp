<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionSet.jsp</h1>
	<%
	session.setAttribute("sessionValue1", "첫번째 세션 값입니다");
	
	%>
	<!--  -->
	<h3> 세션에 저장된 값 : <%=session.getAttribute("sessionValue1") %></h3>
</body>
</html>