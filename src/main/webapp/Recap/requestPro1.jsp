<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>requestPro1.jsp</h1>
	<h1>request 객체 예제 (처리 페이지)</h1>
	
	<%
	/*
	*requestForm1.jsp 페이지의 submit버튼 클릭 시 
	form 태그 내의 데이터(=폼 파라미터)가 request 객체에 저장되고 
	지정된 웹페이지 또는 파일(requestForm1.jsp)로 이동(=요청) 하면서 전달됨
	=> 요청 관련 모든 정보는 request 객체가 관리(=자동으로 생성되는 객체 = 내장객체)
		request.변수명 또는 request.메서드명()형태로 request 객체에 접근 가능
		=> 요청받은 request 객체에 저장된 폼 파라미터 데이터를 가져오는 방법
		1) request.getParameter("파라미터명") : 단일 항목 파라미터 가져오기(String 리턴)
		2) request.getParameterValues("파라미터명") : 복수 항목 파라미터 가져오기 (String[]리턴)
	=> 주의! 전달받은 파라미터가 없을 경우(지정한 이름 없음) null값이 리턴되고, 
	파라미터는 있으나 null string("")값이 리턴됨
	
*/

	//1. 파라미터 중 파라미터 명이 "name"인 값(=이름)을 가져와서 String 타입 strname에 저장
	String strName = request.getParameter("name");
	//만약 스크립틀릿 내에서 웹페이지에 데이터 출력 시 out.print() 메서드 사용
// 	out.print("이름 : " + strName);

	String strAge = request.getParameter("age");
	String strGender = request.getParameter("gender");
// 	String strhobby = request.getParameter("hobby");
	String [] strHobbies = request.getParameterValues("hobby");
	
	
	
	
	
	
	%>
	
	이름 : <%=strName %>
	나이 : <%=strAge %>
	성별 : <%=strGender %>
<%-- 	취미 : <%=strHobbies[0] %>. <%=strHobbies[1] %> <%=strHobbies[2] %> --%>
	
	취미 : 
	
	<%if (strHobbies == null) {%>
	
	<script type="text/javascript">
	alert("취미 선택 필수");
	history.back();
	<%
	} else {
		
		for(int i = 0; i < strHobbies.length ; i++){
			out.print(strHobbies[i] + " ");
		}
	}
	%>
	
	
	
	</script>

</body>
</html>