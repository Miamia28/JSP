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
	<h1>jdbc_connect_test_2.jsp</h1>
	<%
	// JDBC 연결 4단계
	// DB 연결에 필요한 정보 문자열(4가지)을 변수에 별도로 저장
	String driver = "com.mysql.jdbc.Driver"; // 드라이버 클래스 위치 및 이름
	String url = "jdbc:mysql://localhost:3306/study_jsp2"; // DB 접속 주소, 포트번호, DB명
	String user = "root"; // DB 접속 계정명
	String password = "1234"; // DB 접속 계정에 대한 패스워드
	
	// 1단계. JDBC 드라이버 로드
	Class.forName(driver);
	
	// 2단계. DB 연결
	Connection con = DriverManager.getConnection(url, user, password);
	%>
	<h1>DB 접속 성공!</h1>
	<h3>Connection 객체 정보 : <%=con %></h3>
	
	<%
	// 3단계. SQL 구문 작성 및 전달
	// - 1단계와 2단계 과정을 통해 DB에 접속된 상태에서 
	// 접속 정보를 관리하는 Connection 타입 객체를 통해 데이터베이스에 접근하여 
	// 작업 수행 가능
	//(반드시 2단계 과정에서 Connection 타입 변수에 객체를 리턴받아 저장되어있는 상태여야함)
	// - Connection 객체의 preparStatement()메서드를 호출하여 SQL구문 전달 작업 수행
	 // => 파라미터 : 실행할 SQL 구문 문자열
	  // => 리턴타입 : java.sql.Prepared Statement
	// 1) SQL 구문 작성
// 	String sql = "CREATE TABLE student (idx INT)"; // 테이블 생성 시
// 	String sql = "DROP TABLE student"; // 테이블 삭제 시
// 	String sql = "INSERT INTO student VALUES (2)"; // 레코드 추가 시
	String sql = "DELETE FROM student"; // 레코드 모두 삭제 시
	
	// 2) Connection 객체(변수 con)의 prepareStatement() 메서드를 호출하여 SQL 구문 전달
	//    => 파라미터 : SQL 구문(변수 sql)    리턴타입 : java.sql.PreparedStatement
	PreparedStatement pstmt = con.prepareStatement(sql);
	%>
	<h1>SQL 구문 전달 완료!</h1>
	
	<%
	// 4단계. SQL 구문 실행 및 결과 처리
	//1) 3단계에서 리턴받은 PreparedStatement객체의 executeXXX()메서드를 호출하여
//	SQL구문 실행
	// => 수행하려는 SQL구문의 종류에 따라 다른 메서드를 호출하며, 리턴타입도 달라짐
	// 1-1) executeUpdate(): DB에 조작을 가하는 (=변경이 발생) 쿼리를 실행하는 용도의 메서드
	// 주로 DML중 INSERT, UPDATE, DELETE나 DDL (CREATE,ALTER,DROP) 을 실행
	// 리턴값으로 int형 값이 리턴되며, 조작 후 영향을 받은 레코드 수 리턴됨
	// 1-2) executeQuery(): SELECT 구문을 싱행하는 용도의 메서드 
 	// 2) 실행 후 리턴받은 결과 값을 사용하여 결과 처리 
	int count = pstmt.executeUpdate();
	%>
	<h1>CREATE 구문 실행 완료 - <%=count %></h1>
</body>
</html>










