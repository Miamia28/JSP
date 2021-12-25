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
	<h1>request 객체 예제(처리 페이지)</h1>
	<%
	/*
	requestForm1.jsp 페이지의 submit 버튼 클릭 시
	form 태그 내의 데이터(= 폼 파라미터)가 request 객체에 저장되고
	지정된 웹페이지 또는 파일(requestForm1.jsp)로 이동(= 요청)하면서 전달됨
	=> 요청 관련 모든 정보는 request 객체가 관리(= 자동으로 생성되는 객체 = 내장 객체)
	   request.변수명 또는 request.메서드명() 형태로 request 객체에 접근 가능
	=> 요청받은 request 객체에 저장된 폼 파라미터 데이터를 가져오는 방법
	   1) request.getParameter("파라미터명") : 단일 항목 파라미터 가져오기(String 리턴)
	   2) request.getParameterValues("파라미터명") : 복수 항목 파라미터 가져오기(String[] 리턴)
    => 주의! 전달받은 파라미터가 없을 경우(지정한 이름 없음) null 값이 리턴되고,
       파라미터는 있으나 null string("") 값이 리턴됨 
	*/
	
	// -------------------------------------------------------------------------------
	// 주의! 만약, requestForm1.jsp 페이지에서 POST 방식으로 요청했을 경우
	// 응답페이지인 현재 페이지(requestPro1.jsp)에서 별도의 한글 처리가 필수!
	// => request 객체의 setCharacterEncoding() 메서드를 호출하여 "UTF-8" 지정
	request.setCharacterEncoding("UTF-8"); // 이 코드가 없으면 POST 방식에서 한글 깨짐
	// => 파라미터값 가져오는 코드(ex. request.getParameter() 등) 보다 먼저 수행해야함
	// -------------------------------------------------------------------------------
	
	// 1. 파라미터 중 파라미터명이 "name" 인 값(= 이름)을 가져와서 String 타입 strName 에 저장
	String strName = request.getParameter("name"); 
	// 만약, 스크립틀릿 내에서 웹페이지에 데이터 출력 시 out.print() 메서드 사용
// 	out.print("이름 : " + strName);
	
	// 2. 파라미터 중 파라미터명이 "age" 인 값(= 나이)을 가져와서 String 타입 strAge 에 저장
	String strAge = request.getParameter("age");
	
	// 3. 파라미터 중 파라미터명이 "gender" 인 값(= 성별)을 가져와서 String 타입 strGender 에 저장
	String strGender = request.getParameter("gender");
	
	// 4. 파라미터 중 파라미터명이 "hobby" 인 값(= 취미)을 가져와서 String 타입 strHobby 에 저장
// 	String strHobby = request.getParameter("hobby");
	// => 주의! checkbox 처럼 복수개의 데이터가 하나의 파라미터명으로 전달될 경우
	//    getParameter() 메서드를 사용하면 하나의 데이터만 가져올 수 있음
	//    따라서, getParameter() 메서드 대신 getParameterValues() 메서드를 호출하여
	//    복수개의 데이터를 String[] 타입으로 리턴받아 처리해야함
	// => 파라미터 중 파라미터명이 "hobby" 인 값(= 취미)을 가져와서 String[] 타입 strHobbies 에 저장
	String[] strHobbies = request.getParameterValues("hobby");
	// 주의! 체크박스 항목을 하나도 체크하지 않을 경우 "hobby" 파라미터가 전달되지 않음(null)
	// 따라서, 미 체크 시 strHobbies.length 를 통한 반복문을 사용할 때 오류 발생한다!
// 	System.out.println(strHobbies); // null 값 출력됨
	// => 이 때, strHobbies 가 null 일 때를 대비하여 처리할 문장을 별도로 작성해야한다!
	//    ex) 자바스크립트를 사용하여 오류메세지 출력 후 이전페이지로 돌아가기 등의 작업 필요
	%>
<%-- 	<h3>이름 : <%=strName %></h3> --%>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=strName %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=strAge %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%=strGender %></td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
			<!-- strHobbies 배열 내의 인덱스가 고정이 아니므로 0 ~ 2번까지 무조건 접근 시 오류 -->
<%-- 			<td><%=strHobbies[0] %>, <%=strHobbies[1] %>, <%=strHobbies[2] %></td> --%>

				
			<%-- 
			만약, strHobbies 가 null 이면 자바스크립트를 사용하여 
			"취미 선택 필수" 출력 후 이전페이지로 돌아가기 
			--%>
			<%
			if(strHobbies == null) {
			%>
				<script type="text/javascript">
					alert("취미 선택 필수!");
					history.back();
				</script>
			<%
			} else {
				// 스크립틀릿 내에서 strHobbies 배열의 모든 요소에 접근하는 for문 사용 가능
				for(int i = 0; i < strHobbies.length; i++) {
					out.print(strHobbies[i] + " ");
				}
			}
			%>
			<!-- 스크립틀릿 외부에서 표현식을 사용하여 데이터 출력(for문과 출력문 분리) -->
<%-- 			<%for(int i = 0; i < strHobbies.length; i++) { %> --%>
<%-- 				스크립틀릿 외부에서 자바의 변수를 사용하므로 표현식 필요 --%>
<%-- 				<%=strHobbies[i] + " "%> --%>
<%-- 			<%}%> --%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<!-- 뒤로가기 버튼 클릭 시 이전페이지로 돌아가기 -->
				<input type="button" value="뒤로가기" onclick="history.back()">
			</td>
		</tr>
	</table>

	
</body>
</html>





















