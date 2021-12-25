<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jdbc_connect_test_1.jsp</h1>
	<%
	// JDBC 연결 4단계
	// 1단계. JDBC 드라이버 로드
	/*
	드라이버 클래스가 존재하지 않거나, 이름이 틀린 경우 오류(HTTP 상태 500 – 내부 서버 오류) 발생
	javax.servlet.ServletException: java.lang.ClassNotFoundException: com.mysql.jdbc.Drive
	                                          ~~~~~~~~~~~~~~~ 이 부분 주의 ~~~~~~~~~~~~~~~
	=> com.mysql.jdbc.Drive 라는 클래스가 없다는 의미이므로 
	   1) 클래스 파일을 확인(Build path 등록 확인)
	   2) 이름이 올바르게 입력되었는지 확인


	- java.lang 패키지의 Class 클래스의 static 메서드인 forName() 메서드를 호출하여 
	메서드 파라미터로 드라이버 클래스가 위치한 패키지명과 클래스명을 문자열로 전달
	- MySQL 의 경우  com.mysql.jdbc 패키지 내의 Driver.class파일을 지정(클래스명만 사용)
	*/
	%>
	<h1>드라이버 로드 성공!</h1>
</body>
</html>







