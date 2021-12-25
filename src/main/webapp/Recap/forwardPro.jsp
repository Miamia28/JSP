<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>forwardPro.jsp</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	

// 폼파라미터로 전달받은 데이터(아이디, 패스워드) 가져와서 변수에 저장 후 출력
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	// input type="hidden" 태그로 전달받은 파라미터로 request.getParameter() 메서드로 가져올 수 있음
	String jumin = request.getParameter("jumin");
	
	// forward 액션 태그에 포함시켜 전달할 데이터를 변수에 저장
	int num = 100;
	
// 	out.print("<h3>아이디 : " + id + "</h3>"); 
// 	out.print("<h3>패스워드 : " + passwd + "</h3>"); 
%>

	<h3>아이디 : <%=id%></h3>
	<h3>비밀번호 : <%=passwd %></h3>
	<h3>주민번호 : <%=jumin %></h3>

<%--
	액션 태그 (Action Tag)
	- JSP 페이지 내에서 자바 코드등을 직접 사용하지 않고
	XML 형식의 태그 문법을 활용하여 동일한 작업을 수행하도록 하는 태그 (기능)
	- <jsp:액션태그명 속성명 = "값"/> 형태로 사용하며 
	태그 내에 다른 태그를 포함해야 하는 경우 끝 태그 </jsp:액션 태그명>을 사용해야함
	 => 주의! 반드시 끝태그 또는 끝 표시(/>)를 포함해야함
	 - 액션 태그명 : forward, include, useBean, setProperty 등
	 
	 
	 
	 
	 1. forward액션 태그 
	 - pageContext 객체의 forward()메서드와 동일한 기능을 제공하는 액션 태그
	 즉, 페이지 이동 처리를 수행하는 액션 태그
	 - 현재 페이지의 request 객체를 그대로 유지하여 페이지 이동 수행 
	 => 주소 표시줄의 URL(주소)이 그대로 유지되며, request 객체에 저장된 데이터가 유지됨
	  = Dispatcher 방식 포워딩
	  - 포워딩 시 전달할 데이터는 주소(URL) 뒤에 파라미터 형시으로 붙여서 전달하거나
	  (ex. forwardPro.jsp?id=admin)
	  <jsp:param>태그를 사용하여 데이터를 포함시켜 전달 가능 (= input type = "hidden"과 동일)
	  => 단 , <jsp:param>태그 사용 시에는 파라미터가 URL에 노출되지 않음
	  
	  <기본문법>
	  
	  <jsp:forward page= "포워딩 할 페이지 또는 파일"/>
	  또는 
	  <jsp:forward page="포워딩 할 페이지 또는 파일 ">
	  	<jsp:param name = "파라미터명1" value="데이터1"/>
	  	<jsp:param name ="파라미터명2" value="데이터2"/>
	  	</jsp:forward>
	  	--%>
	  	
<%-- 	  	<jsp:forward page= "forwardPro2.jsp"/> --%>
	  	
	  <!--  forward 액션 태그로 포워딩 시 데이터를 추가하여 포워딩 작업 수행  -->
	  <!--  일반적인 데이터는 name속성의 문자열 형태로 전달하며 -->
	  <!-- 자바 변수 데이터는 name 속성에 표현식을 결합하여 전달 -->
	  <!--  반드시 끝 태그를 별도로 작성해야함  -->
	  <jsp:forward page ="forwardPro2.jsp">
	  	<jsp:param name="paramValue1" value = "forward 액션태그의 param데이터"/>
  		<jsp:param name="paramValue2" value="<%=num %>"/>
  		</jsp:forward>
	  
	  
	  
	  


 --%>




</body>
</html>