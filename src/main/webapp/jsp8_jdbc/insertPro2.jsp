
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
 	String url = "jdbc:mysql://localhost:3306/study_jsp2";
 	String user = "root";
 	String password = "1234";
 	
 	
 	Class.forName(driver);
 
 	
 	Connection con = DriverManager.getConnection(url, user, password);
 	
 	
 	String sql = "INSERT INTO student VALUES (null,?,?,?,?)";
 	
 	
 	PreparedStatement pstmt = con.prepareStatement(sql);
 	
 	int count = pstmt.executeUpdate();
 	
 	pstmt.setInt(1, student_no);
 	pstmt.setString(2, name);
 	pstmt.setString(3, email);
 	pstmt.setString(4, phone);
 	
 	
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

<form action="insertPro2.jsp" method ="post">

	<h1>학생 정보 출력</h1>
	<!-- 폼 파라미터 값을 출력 -->
	<h3>학번 : <%=student_no %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>E-Mail : <%=email %></h3>
	<h3>전화번호 : <%=phone %></h3> 
	<hr>
	<h3>학생 정보 저장 완료 </h3>
	
	</form>


</body>
</html>