<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// insertForm.jsp 페이지에서 입력받아 전달된 폼 파라미터 값을 가져와서 변수에 저장
request.setCharacterEncoding("UTF-8"); // POST 방식 한글처리
// 주의! 학번(student_no)의 경우 request.getParameter() 메서드 리턴타입이 String 타입이지만
// 실제 DB 의 컬럼타입은 int 이므로 String -> int 변환 필수!
// Integer 클래스의 static 메서드 parseInt() 메서드를 호출하여 문자열 데이터를 전달하면
// 해당 데이터를 정수(int) 형태로 리턴함
// => int xxx = Integer.parseInt("문자열로 된 정수데이터");
// String student_no = request.getParameter("student_no"); // String 타입으로 저장할 경우
int student_no = Integer.parseInt(request.getParameter("student_no")); // int 타입으로 변환하여 저장
// => 주의! 반드시 숫자 형태의 데이터만 입력해야된다!
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
// --------------------------------------------
// JDBC 를 활용하여 MySQL 의 student 테이블에 전달받은 데이터를 추가(INSERT)
// 0. DB 연결에 필요한 문자열 변수 선언
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/study_jsp2";
String user = "root";
String password = "1234";

// 1단계. JDBC 드라이버 로드
Class.forName(driver);
// out.println("<h3>드라이버 로드 성공!");

// 2단계. DB 연결
Connection con = DriverManager.getConnection(url, user, password);
// out.println("<h3>DB 연결 성공!");

// 3단계. SQL 구문 작성 및 전달
// String sql = "INSERT INTO student VALUES(null,20211111,'홍길동','hong@hong.com','010-1234-5678')";
// => 학번, 이름, E-Mail, 전화번호는 전달받은 데이터가 저장된 변수를 사용하므로 문자열 결합 필요
//    단, 문자 데이터는 작은따옴표('')로 둘러싸므로 변수 결합 시 주의해야함
String sql = "INSERT INTO student VALUES(null," + student_no + ",'" + name + "','" + email + "','" + phone + "')";
PreparedStatement pstmt = con.prepareStatement(sql);

// 4단계. SQL 구문 실행 및 결과 처리
int count = pstmt.executeUpdate();

// 중요! 데이터베이스 또는 네트워크 및 입출력 작업을 수행한 후에는
// 반드시 수행한 작업에 사용된 자원(리소스)을 반환해야함
// => 사용한 자원을 가진 객체의 close() 메서드를 호출하여 자원 반환 수행 가능(일반적인 방법)
// => 단, 일반적으로 객체 생성 순서와 반대 순서로 자원을 반환
pstmt.close(); // SQL 구문 관리 객체 반환
con.close(); // DB 연결 정보 관리 객체 반환
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 정보 출력</h1>
	<!-- 폼 파라미터 값을 출력 -->
	<h3>학번 : <%=student_no %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>E-Mail : <%=email %></h3>
	<h3>전화번호 : <%=phone %></h3> 
	<hr>
	<h3>학생 정보 저장 완료</h3>
</body>
</html>








