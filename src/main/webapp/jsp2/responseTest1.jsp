<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>responseTest1.jsp</h1>
	<%
	/*
	response 객체
	- 클라이언트의 HTTP 요청(request)에 대한 HTTP 응답(response) 정보를 관리하는 객체
	- 서버에서 클라이언트에 대한 여러가지 응답 데이터 관리(변경 가능)
	- response.XXX() 메서드를 호출하여 값 변경 가능
	1) 클라이언트 응답 데이터의 헤더값 변경
       response.setHeader("헤더이름", "변경할 헤더값");
	2) 클라이언트 응답 데이터의 컨텐츠 타입 변경
       response.setContentType("text/html; charset=UTF-8");
	3) 클라이언트의 쿠키값을 생성 및 저장
       response.addCookie("쿠키값");
	4) 클라이언트 요청에 대한 페이지 이동 처리
	   response.sendRedirect("이동할 페이지 URL");
	   => 자바스크립트의 location.href="이동할 페이지 URL" 기능과 동일한 역할 수행
	   => 하이퍼링크(a 태그)를 사용하여 이동하는 방식과도 동일함(반드시 링크 클릭 필요)
	      ex) <a href="이동할 페이지 URL">클릭</a>
	*/
	
	// 1. 자바 코드 내에서 이동할 경우
	// => response 객체의 sendRedirect() 메서드를 호출하여 이동할 페이지를 파라미터로 전달
// 	response.sendRedirect("responseTestResult1.jsp");
	// => 자바스크립트 location.href 와 마찬가지로 실행하는 즉시 페이지가 이동됨
	response.sendRedirect("http://www.naver.com");			
	%>
	
	<!-- 2. 하이퍼링크로 이동할 경우(responseTestResult1.jsp) => 반드시 링크를 클릭해야만 이동 -->
	<a href="responseTestResult1.jsp">responseTestResult1.jsp 페이지로 이동</a>
	
	<!-- 3. 자바스크립트를 사용하여 이동할 경우 -->	
	<!-- 자바스크립트 코드가 로딩되면 즉시 해당 페이지로 이동하므로 응답페이지만 표시됨 -->
	<script type="text/javascript">
// 		location.href = "responseTestResult1.jsp";
	</script>
</body>
</html>































