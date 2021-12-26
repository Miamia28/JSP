<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>

	<form action="mainPage.jsp" method ="post">
	<h1>로그인 페이지</h1>
	학번 : <input type ="text" name ="student_no" required = "required" ><br>
	비밀번호 :<input type = "password" name = "passwd" required = "required" ><br>
	 
	<input type = "submit" value ="로그인">
	
	
	
	</form>

</body>
</html>