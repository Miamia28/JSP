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
	<%
	// POST 방식 한글 처리(id, password 항목에 한글이 없을 경우 불필요)
	request.setCharacterEncoding("UTF - 8");
	
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	%>
	<h3>아이디 : <%=id %></h3>
	<h3>패스워드 : <%= password %></h3>
	
	<%if (id.equals("admin") && password.equals("1234")) { %>
		<h3> 로그인 성공 ! </h3>	
		<script type="text/javascript">
		alert("로그인 성공!");
		</script>
		<% }
		else
		{ %>
	
	
</body>
</html>