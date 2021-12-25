<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>requestPro2.jsp - 로그인 정보 확인</h1>
	<!-- 아이디(id), 패스워드(password) 파라미터 가져와서 출력 -->
	<%
	// POST 방식 한글 처리(id, password 항목에 한글이 없을 경우 불필요)
	request.setCharacterEncoding("UTF-8");
	
	// 폼파라미터로 전달받은 아이디, 패스워드 가져오기
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	%>
	
	<h3>아이디 : <%=id %></h3>
	<h3>패스워드 : <%=password %></h3>
	
	<!-- 
	아이디가 "admin" 이고, 패스워드가 "1234" 일 경우
	자바스크립트를 사용하여 "로그인 성공!" 출력, 아니면 "로그인 실패!" 출력
	-----------------------------------------------------------------
	주의! 자바 코드 내에서 문자열 비교할 때 동등비교연산자(==) 대신
	String 클래스의 equals() 메서드를 사용해야한다!
	< 기본 문법 > 
	if(문자열변수.equals("비교할문자열") {}
	=> 문자열이 같은지 판별 후 boolean 타입 결과 리턴(true : 같음, false : 다름)
	-->
<%-- 	<%if(id == "admin" && password == "1234") { // 문자열의 정상적인 비교가 되지 않음 %> --%>
	<%if(id.equals("admin") && password.equals("1234")) { // 문자열의 정상적인 비교 %>
		<h3>로그인 성공!</h3>
		<script type="text/javascript">
			alert("로그인 성공!");
		</script>
	<%} else { %>
		<h3>로그인 실패!</h3>
		<script type="text/javascript">
			alert("로그인 실패!");
		</script>
	<%} %>
</body>
</html>















