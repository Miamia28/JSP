<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//POST 방식 한글 처리
request.setCharacterEncoding("UTF-8");

//폼 파라미터 가져오기
int student_no = Integer.parseInt(request.getParameter("student_no"));
String name = request.getParameter("name");

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/study_jsp2";
String user = "root";
String password = "1234";

Class.forName(driver);
Connection con = DriverManager.getConnection(url, user, password);

// 학번과 이름이 같은 레코드 삭제하기(DELETE)
// DELETE FROM 테이블명 WHERE 컬럼명=값 AND 컬럼명=값
String sql = "DELETE FROM student WHERE student_no=? AND name=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1, student_no);
pstmt.setString(2, name);

int count = pstmt.executeUpdate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 삭제 정보 출력</h1>
	<h3>학번 : <%=student_no %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>학생 정보 삭제 완료 - <%=count %>개</h3>
</body>
</html>