<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function func1(){
	location.href = "sessionSet.jsp";
}


function func2(){
	location.href = "sessionRemove.jsp";
}

</script>

</head>
<body>
	<h1>sessionTest2.jsp</h1>
	<a href = "sessionSet.jsp">세션값 생성</a><br>
	<a href = "sessionRemove.jsp">세션값 삭제</a><br>
	<hr>
	<input type = "button" value = "세션값 생성" onclick = "func1()"><br>
	<input type = "button" value = "세션값 삭제" onclick = "func2()"><br>
</body>
</html>