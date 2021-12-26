<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<script type="text/javascript">

	function func1(){
	
		location.href="savePage.jsp";
		
}

	function func2(){
		
		location.href="outputPagePro.jsp";
		
}
	function func3(){
		
		location.href="updatePage.jsp";
		
}
	function func4(){
		
		location.href="deletePage.jsp";
		
}


</script>
</head>
<body>

		
	



	
	<input type=  "button" value = "학생 정보 저장" onclick = 'func1()'><br>
	<input type = "button" value = "학생 정보 출력" onclick = 'func2()'><br>
	<input type = "button" value = "학생 정보 수정" onclick = 'func3()'><br>
	<input type = "button" value = "학생 정보 삭제" onclick = 'func4()'><br>
	
	
	
	
	
	
	
</body>
</html>