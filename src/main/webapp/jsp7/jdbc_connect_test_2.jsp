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
	// 1단계. JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	%>
	<h1>드라이버 로드 성공!</h1>
	
	<%
	// 2단계. DB 연결
	DriverManager.getConnection("jdbc:mysql://localhos:3306/study_jsp2", "root", "1234");
	%>
	<h1>DB 연결 성공!</h1>
	<!-- 2단계까지는 데이터베이스 제품별로 정보가 달라지는 부분 -->
	<!-- 3단계부터는 실제 데이터베이스 내의 SQL 구문 실행을 수행하므로 공통 작업에 해당함 -->
	<!--  DB 연결 (=접속)
	
	 	- java.sql 패키지의 DriverManager 클래스의 static 메서드인 getConnection() 메서드를 호출하여
	 	메서드 파라미터로 DB접속 URL, 접속 계정, 패스워드를 문자열로 차례대로 전달
	 	<기본 문법>
	 	DriverManager.getConnection("URL", "계정명","패스워드");
	 	- 첫번째 파라미터의 URL부분은 DB접속에 필요한 URL관련 정보를 입력
	 	 => MYSQL 형식은 "jdbc:mysql://DB접속주소:포트번호/DB명" 으로 구성되는데 
	 	 이 때, DB접속 주소는 서버의 주소를 입력하며, 자신의 컴퓨터를 지정할 경우
	 	 localhost사용함
	 	 또한, 포트번호는 MySQL의 경우 기본 포트번호 3306번, 오라클은 1521번 사용
	 	 
	
	
	
	
	
	
	
	
	
	
	 -->




</body>
</html>

















