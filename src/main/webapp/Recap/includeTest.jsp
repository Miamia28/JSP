<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	
	2. include 액션 태그 
	 - 현재 페이지에 특정 페이지를 포함(include)시키는 용도의 액션 태그
	 - 포함시킬 페이지로 제어권이 일시적으로 넘어간 후 해당 페이지에서의 작업이 끝나면
	 다시 원래 페이지로 제어권이 돌아옴
	 -> 결국, forward 액션태그는 포워딩 된 후 그 위치에서 이전으로 돌아가지 않지만 
	 include 액션태그는 포워딩 작업 후 다시 원래 위치로 돌아감 (출력값을 전달하여 원래페이지로)
	 - forward 액션태그와 마찬가ㄹ지로 include 되는 페이지로 파라미터를 전달하려면
	 jsp:param 태그를 사용하여 전달 가능
	 
	 
	 
	 <기본 문법> 
	 <jsp: include page="포함할 페이지"/>
	 또는 
	 <jsp:include page="포함할 페이지">
	 	<jsp:param.../>
	 	</jsp:include>
	
	 --%>

	<h1> includeTest.jsp</h1>
	<hr>
	<!--  includeTest2. jsp 페이지를 include 액션태그로 포함시키기  -->
<%-- 	<jsp:include page="includeTest2.jsp"/>	 --%>
	
	
	<!-- includeTest2.jsp 페이지 포함 시 파라미터 값 전달 -->
	<jsp:include page="includeTest2.jsp">
		<jsp:param name="paramValue" value="Parameter Value"/>
	</jsp:include>














</body>
</html>