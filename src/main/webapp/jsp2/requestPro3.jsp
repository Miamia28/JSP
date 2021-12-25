<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// POST 방식 요청에 대한 한글 처리
request.setCharacterEncoding("UTF-8");

// 폼 파라미터 데이터 가져오기
String name = request.getParameter("name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String grade = request.getParameter("grade");
// 복수개의 데이터가 하나의 파라미터로 전달될 경우 getParameterValues() 메서드 호출
String[] hobby = request.getParameterValues("hobby");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>requestPro3.jsp - 학생 정보 출력</h1>
	<h3>이름 : <%=name %></h3>
	<h3>나이 : <%=age %></h3>
	<h3>성별 : <%=gender %></h3>
	<h3>학년 : <%=grade %></h3>
	<h3>
		취미 : 
		<%
		if(hobby != null) { // 취미를 하나라도 체크한 경우
			// for문을 사용하여 hobby 배열 크기만큼 반복
			for(int i = 0; i < hobby.length; i++) {
				out.print(hobby[i] + " ");
			}
		} else { // 취미를 하나도 체크하지 않은 경우
			out.print("없음");
		}
		%>
	</h3>
</body>
</html>












