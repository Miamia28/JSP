
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    
    
    request.setCharacterEncoding("UTF-8");
    
   int student_no = Integer.parseInt(request.getParameter("student_no"));
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   
   
   String driver = "com.mysql.jdbc.Driver";
   String url ="jdbc:mysql://localhost:3306/study_jsp2" ;
   String user = "root";
   String password = "1234";
    
    
    Class.forName(driver);
    
   Connection con = DriverManager.getConnection(url, user, password);
    
    
   
    
 // UPDATE 테이블명 SET 변경할컬럼명=변경할값,변경할컬럼명=변경할값 WHERE 컬럼명=값 AND 컬럼명=값
    String sql = "UPDATE student SET email = ?, phone = ? WHERE student_no=? AND name=?";
 
 	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1, email);
	pstmt.setString(2, phone);
	pstmt.setInt(3, student_no);
	pstmt.setString(4, name);
	
	
	int count = pstmt.executeUpdate();
	
	
	
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

</body>
</html>