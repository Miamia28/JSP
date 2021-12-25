<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>forwardForm.jsp - 포워딩 연습</h1>
	<form action="forwardPro.jsp" method="post">
		<!-- 
		GET 방식에서 URL 에 전달되는 파라미터를 숨겨야하거나
		POST 방식에서 입력받는 데이터 외의 데이터를 전달해야하는 경우
		<input type="hidden"> 태그를 사용하여 전달 가능
		-->
		<input type="hidden" name="jumin" value="901010-1234567">
		
		<h3>아이디 : <input type="text" name="id"></h3>
		<h3>패스워드 : <input type="password" name="passwd"></h3>
		<input type="submit" value="전송">
	</form>
</body>
</html>