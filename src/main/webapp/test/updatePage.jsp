<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 수정</title>
</head>
<body>
	<form action="updatePagePro.jsp" method="post">
	
	이름 : <input type = "text" name ="name"><br>
	나이 : <input type = "text" name = "age"><br>
	성별 : <input type = "radio" name = "gender" value ="남" >남
			<input type = "radio" name = "gender" value ="여" >여
			<br>
	학년 : <select name = "grade"> 
				<option  value = "1학년">1학년</option>
				<option  value = "2학년">2학년</option>
				<option  value = "3학년">3학년</option>
				<option  value = "4학년">4학년</option>
	
	</select><br>
	
	과목 :  <input type = "checkbox" name = "subject" value = "JSP">JSP 
			<input type = "checkbox" name = "subject" value = "DB">DB 
			<input type = "checkbox" name = "subject" value = "WEB">WEB 
			<input type = "checkbox" name = "subject" value = "JAVA">JAVA 
			
			<br>
	학번 : <input type = "text" name = "student_no" value =<%=session.getAttribute("student_no") %> readonly/><br>
			<input type = "submit" value = "수정" >
	
		</form>
	
	
</body>
</html>