
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("UTF-8");
    
    
   	String student_no = request.getParameter("student_no");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/study_jsp2";
	String user = "root";
	String password = "1234";
    
    Class.forName(driver);
    
    Connection con = DriverManager.getConnection(url, user, password);
    

    
    //student 테이블 모든 레코드 조회
    String sql = "SELECT * FROM student";
    
    
    
    
    //SELECT 구문은 PreparedStatement 객체의 executeQuery() 메서드 사용 필수!
    
    PreparedStatement pstmt = con.prepareStatement(sql);
    
    pstmt.executeQuery();
    
    pstmt.close();
    con.close();
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 목록 조회</h1>
</body>
</html>