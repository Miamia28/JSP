/**
 * 
 */
function login(id, passwd) {
	// 아이디와 패스워드 판별하여 아이디가 "admin" 이고 패스워드가 "1234" 이면 "로그인 성공!" 출력
	// 아니면, "로그인 실패!" 출력
	if(id == "admin" && passwd == "1234") {
//		alert("로그인 성공!");
		document.write(id + ", " + passwd + ": 로그인 성공!<br>");
	} else {
//		alert("로그인 실패!");
		document.write(id + ", " + passwd + ": 로그인 실패!<br>");
	}
}










