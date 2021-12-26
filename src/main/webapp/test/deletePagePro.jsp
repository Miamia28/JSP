
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	int student_no = Integer.parseInt(request.getParameter("student_no"));
	String name = request.getParameter("name");

	session.invalidate(); 

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/study_jsp2";
	String user = "root";
	String password = "1234";
	
	Class.forName(driver);
	
	Connection con = DriverManager.getConnection(url, user, password);
	// DELETE FROM 테이블명 WHERE 컬럼명=값 AND 컬럼명=값
	String sql = "DELETE FROM study WHERE student_no =? AND name = ?";
	
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	
	
	pstmt.setInt(1, student_no);
	pstmt.setString(2, name);
	

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