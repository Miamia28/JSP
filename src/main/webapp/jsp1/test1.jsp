<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="이 페이지는 이클립스와 JSP 를 사용하여 생성한 페이지입니다." %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test1.jsp - page 디렉티브</h1>
	<h3>page 디렉티브 info 속성 : <%=getServletInfo() %></h3>
	<%-- 
	외부 라이브러리의 클래스(또는 인터페이스)를 사용하려면 import 속성이 필요함
	=> 사용할 자바 클래스명을 자동 완성할 경우 자동으로 page 디렉티브 import 속성이 추가됨
	--%>
	<%
	Timestamp now; // java.sql 패키지의 Timestamp 클래스 자동완성 시
	// page 디렉티브가 자동 생성되어 page import="java.sql.Timestamp" 값이 설정됨
	%>
</body>
</html>

















