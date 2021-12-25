<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionTest.jsp</h1>
	<h3> 현재 세션 유지 시간 : <%=session.getMaxInactiveInterval() %>초</h3>
	<%
	session.setMaxInactiveInterval(10);
	%>
	
	<h3>변경 후 세션 유지 시간 : <%=session.getMaxInactiveInterval() %>초</h3>
	<!-- 페이지 새로고침(F5)이 10초 이내에 발생하지 않으면 현재 세션이 초기화됨 -->

	<h3>새 세션 여부 : <%=session.isNew() %></h3>
	<h3>세션 ID : <%=session.getId() %></h3>
	<h3>세션 생성 시각 : <%= new Date(session.getCreationTime()) %></h3>
	<h3>마지막으로 세션 접근 시각 : <%= new Date(session.getLastAccessedTime()) %></h3>


	<%session.setMaxInactiveInterval(1800);%>
	
	
	<hr>
	
	<%session.invalidate(); %>




</body>
</html>