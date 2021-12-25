<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>학생 정보 수정</h1>
	<form action=" updatePro.jsp" method ="post">
		<table border = "1">
			<tr>
				<th> 학번 </th>
				<td><input type ="text" name = "student_no"></td>
			</tr>
			<tr>
				<th> 이름 </th>
				<td><input type ="text" name = "name"></td>
				
			</tr>
			<tr>	
				<th> 수정할 E-mail </th>
				<td><input type ="text" name = "email"></td>
				
			</tr>
			
			<tr>	
				<th> 수정할 전화번호 </th>
				<td><input type ="text" name = "phone"></td>
				
			</tr>
			<tr>	
				<td colspan = "2">
					<input type ="submit" value ="수정">
					<input type ="reset" name = "초기화">
				</td>
			
			</tr>
		
		
		
		
		
		
		</table>
		</form>
		
</body>
</html>