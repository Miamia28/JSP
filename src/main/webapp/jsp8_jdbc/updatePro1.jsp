<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// POST 방식 한글 처리
request.setCharacterEncoding("UTF-8");

// 폼 파라미터 가져오기
int student_no = Integer.parseInt(request.getParameter("student_no"));
// => 주의! 반드시 숫자 형태의 데이터만 입력해야된다!
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");

//0. DB 연결에 필요한 문자열 변수 선언
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/study_jsp2";
String user = "root";
String password = "1234";

// 1단계. 드라이버 클래스 로드
Class.forName(driver);

// 2단계. DB 연결
Connection con = DriverManager.getConnection(url, user, password);
out.println("DB 연결 완료!");

// 3단계. SQL 구문 작성 및 전달
// 전달받은 학번과 이름이 일치하는 레코드의 E-Mail 과 전화번호를 수정(UPDATE)
// UPDATE 테이블명 SET 변경할컬럼명=변경할값,변경할컬럼명=변경할값 WHERE 컬럼명=값 AND 컬럼명=값
String sql = "UPDATE student SET email=?,phone=? WHERE student_no=? AND name=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, email);
pstmt.setString(2, phone);
pstmt.setInt(3, student_no);
pstmt.setString(4, name);

// 4단계. SQL 구문 실행 및 결과 처리
int count = pstmt.executeUpdate();

// 자원 반환
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
	<h1>학생 정보 출력</h1>
	<!-- 폼 파라미터 값을 출력 -->
	<h3>학번 : <%=student_no %></h3>
	<h3>이름 : <%=name %></h3>
	<h3>E-Mail : <%=email %></h3>
	<h3>전화번호 : <%=phone %></h3> 
	<hr>
	<h3>학생 정보 수정 완료 - <%=count %>개</h3>
</body>
</html>