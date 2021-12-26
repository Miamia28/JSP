
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");


	
	
	int student_no = Integer.parseInt(request.getParameter("student_no"));
	String name = request.getParameter("name");
	int age =Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
	
	session.setAttribute("student_no", student_no);
	session.setAttribute("name", name);	
	session.setAttribute("age", age);
	session.setAttribute("gender", gender);
	session.setAttribute("grade", grade);
	session.setAttribute("subject", subject);
	
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/study_jsp2";
	String user = "root";
	String password = "1234";
	
	Class.forName(driver);
	
	Connection con = DriverManager.getConnection(url, user, password);
	
	String sql = "INSERT INTO study VALUES(?,?,?,?,?,?)";
	
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	
	
	pstmt.setInt(1, student_no);
	pstmt.setString(2, name);
	pstmt.setInt(3, age);
	pstmt.setString(4, gender);
	pstmt.setString(5, grade);
	pstmt.setString(6, subject);
	

	int count = pstmt.executeUpdate();
	
	
	pstmt.close();
	con.close();
	
	
	
	
	
	




%>    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

location.href="mainPage.jsp";

</script>
</head>
<body>
	
	
	
	
</body>
</html>