<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 아이디, 패스워드 가져와서 저장
String id = request.getParameter("id");
String password = request.getParameter("password");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>requestPro4.jsp - 로그인 처리 화면</h1>
	<!-- 아이디, 패스워드 출력 후 로그인 성공 여부에 따라 다른 작업 수행 -->
	<!-- 
	만약, id 가 "admin" 이고, password 가 "1234" 일 경우
	=> "로그인 성공" 출력하고, 자바 코드를 통해 requestPro4_responseResult.jsp 페이지로 이동하기 
	아니면, "로그인 실패" 출력 후 자바스크립트를 통해 이전 페이지로 돌아가기 
	-->
	<%if(id.equals("admin") && password.equals("1234")) {%>
		<script type="text/javascript">
			alert("로그인 성공!");
// 			location.href = "requestPro4_responseResult.jsp";
		</script>
		<!-- 자바 response 객체의 sendRedirect() 메서드로 특정 페이지 이동 처리 -->
		<%response.sendRedirect("requestPro4_responseResult.jsp"); %>
	<%} else {%>
		<script type="text/javascript">
			alert("로그인 실패!");
			history.back(); // 이전페이지로 돌아가기
		</script>
	<%}%>
	
	<!-- 
	만약, id 가 "admin" 이고, password 가 "1234" 일 경우
	=> "자바 코드를 통해 requestPro4_responseResult.jsp 페이지로 이동하기 
	아니면, "자바 코드를 통해 requestPro4_responseResult2.jsp 페이지로 이동하기 
	-->
	
</body>
</html>














