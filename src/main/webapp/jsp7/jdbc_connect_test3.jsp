<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/study_jsp2";
	String user = "root";
	String password = "1234";

	Class.forName(driver);
	Connection con = DriverManager.getConnection(url, user, password);
	


%>
		<h1> DB 접속 성공! </h1>
		<h3> Connection 객체 정보 : <%=con %></h3>
	
	<%
// 	String sql = "CREATE TABLE student (idx INT);";
	
// 	String sql = "DROP TABLE student";

// 	String sql = "INSERT INTO student VALUE(2)";
	String sql = "DELETE FROM student";
	
	 PreparedStatement pstmt = con.prepareStatement(sql);
	%>
	<h1>SQL 구문 전달 완료!</h1>
	
	
	<%
	int count = pstmt.executeUpdate();
	
		
	
	%>
	<%=count %>

</body>
</html>