<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>학생 정보 삭제</h1>
	<!-- form 태그 정의 - 이동할 페이지 deletePro.jsp, 메서드 : POST 방식 -->
	<!-- 학번(student_no)과 이름(name) 입력폼, 학생삭제버튼(submit) -->
	<form action="deletePro.jsp" method="post">
		<h3>학번 : <input type="text" name="student_no"></h3>
		<h3>이름 : <input type="text" name="name"></h3>
		<input type="submit" value="학생삭제">
	</form>
</body>
</html>