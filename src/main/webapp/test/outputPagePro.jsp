
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	
	
// 	int student_no = Integer.parseInt(request.getParameter("student_no"));
// 	String name = request.getParameter("name");
// 	int age =Integer.parseInt(request.getParameter("age"));
// 	String gender = request.getParameter("gender");
// 	String grade = request.getParameter("grade");
// 	String subject = request.getParameter("subject");
	

// 	session.getAttribute("student_no");
// 	session.getAttribute("name");	
// 	session.getAttribute("age");
// 	session.getAttribute("gender");
// 	session.getAttribute("grade");
// 	session.getAttribute("subject");
	
	
	
	
	
	
	



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 출력</title>

</head>
<body>


	<table border="1">
		<tr>
			<td>학번</td>
			<td><%=session.getAttribute("student_no") %><br></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=session.getAttribute("name") %></td>
		</tr>
		<tr>
			<td>나이
			</td>
			<td><%=session.getAttribute("age") %>
			</td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=session.getAttribute("gender") %></td>
		</tr>
		<tr>
			<td>학년</td>
			<td><%=session.getAttribute("grade") %></td>
		</tr>
		<tr>
			<td>수업 과목</td>
			<td><%=session.getAttribute("subject") %></td>
		</tr>

	</table>
	<a href = "mainPage.jsp">메인 페이지 이동</a>


</body>
</html>