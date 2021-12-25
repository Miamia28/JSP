/**
 * 
 */
function login(id, passwd) {
	if(id == "admin" && passwd == "1234") {
		document.write(id + ", " + passwd + "<br>");
		return "로그인 성공!";
	} else {
		document.write(id + ", " + passwd + "<br>");
		return "로그인 실패!";
	}
}