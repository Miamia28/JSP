<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>forwardPro2.jsp</h1>
	<%
	
	
	//이전 페이지에서 forward 액션태그로 이동할 경우  request 객체가 그대로 유지됨
	// 따라서, 폼파라미터로 전달받은 데이터를 그대로 사용할 수 있다!(GET/POST 방식 무관)
	//=> request 객체가 유지되므로 인코딩 방식 변경 정보도 그대로 유지됨
	// => 따라서, 이전페이지에서 한글 표현 방식(UTF-8) 지정했을 경우
	// 현재 페이지에서 별도로 지정하지 않아도 request 객체 내의 한글데이터가 깨지지 않음
	
	String id= request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String jumin = request.getParameter("jumin");
	
	// forward 액션태그의 param 태그로 전달받은 데이터 가져오기 = 동일한 방식
	String paramValue1 = request.getParameter("paramValue1");
	String paramValue2 = request.getParameter("paramValue2");
	
	
	%>

	아이디 : <%=id %>
	패스워드 : <%=passwd %>
 	주민번호 : <%=jumin %>

	paramValue1 : <%=paramValue1 %>
	paramValue2 : <%= paramValue2 %>
	





</body>
</html>