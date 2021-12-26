<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 저장</title>

<script type="text/javascript">




</script>
</head>

<body>

<form action="savePagePro.jsp" method = "post">
	학번 : <input type = "text" required maxLength ="6" name="student_no"><br>
	이름 : <input type = "text" name ="name"><br>
	나이 : <input type = "text" name = "age"><br>
	성별 : <input type = "radio" name = "gender" value ="남" >남
			<input type = "radio" name = "gender" value ="여" >여
			<br>
	학년 : <select name = "grade"> 
				<option value = "1학년">1학년
				<option value = "2학년">2학년
				<option value = "3학년">3학년
				<option value = "4학년">4학년
	
	</select><br>
	
	과목 :  <input type = "checkbox" name = "subject" value ="JSP">JSP 
			<input type = "checkbox" name = "subject" value="DB" >DB 
			<input type = "checkbox" name = "subject" value ="WEB">WEB 
			<input type = "checkbox" name = "subject" value ="JAVA">JAVA 
			
			<br>
			
			<input type = "submit" value = "저장" >
			<input type = 'reset' value ="초기화">

</form>

</body>
</html>




