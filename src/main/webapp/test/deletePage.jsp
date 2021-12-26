<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 삭제</title>
</head>
<body>
	<form action="deletePagePro.jsp" method ="post">
		학번 : <input type = "text" name = "student_no">
		이름 : <input type = "text" name = "name">
		
		<input type = "submit" value = "삭제">
	</form>
</body>
</html>