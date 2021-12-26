
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
	

// 	session.setAttribute("student_no", student_no);
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
	
	// UPDATE 테이블명 SET 변경할컬럼명=변경할값,변경할컬럼명=변경할값 WHERE 컬럼명=값 AND 컬럼명=값
	String sql = "UPDATE study SET name =?, age =?, gender =?, grade =?, subject =? WHERE student_no =?";
	
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	
	

	pstmt.setString(1, name);
	pstmt.setInt(2, age);
	pstmt.setString(3, gender);
	pstmt.setString(4, grade);
	pstmt.setString(5, subject);
	pstmt.setInt(6, student_no);

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

	location.href = "mainPage.jsp";
</script>
</head>
<body>
	
</body>
</html>