// 함수 checkNumGame() 정의
function checkNumGame() {
	/*
	정수 1개를 입력받아 기존에 저장된 정수와 비교하여 일치 여부 확인한 후
	1) 기존에 저장된 숫자가 입력받은 숫자보다 클 경우 : "입력받은 숫자보다 큽니다!" 출력
	2) 기존에 저장된 숫자가 입력받은 숫자보다 작을 경우 : "입력받은 숫자보다 작습니다!" 출력
	   => 단, 입력받은 숫자보다 작거나 클 경우(정답이 아닐 경우) 다시 숫자 입력받기
	3) 기존에 저장된 숫자가 입력받은 숫자와 같을 경우 : "정답입니다!" 출력
	=> 이 때, 정답일 경우 반복문 종료 후 숫자를 입력한 횟수를 계산하여 "x번만에 정답!" 출력
	*/
	var correctNum = 10; // 정답
	var count = 0; // 숫자 입력 횟수 카운팅 할 변수
	
	while(true) { // 무한루프를 활용하여 정답이 될때까지 반복
		// 숫자 1개를 입력받아 변수에 저장(number 타입으로 변환)
		var num = Number(prompt("정수를 입력하세요."));
		count++; // 숫자를 입력받았으므로 카운트 증가
		
		// 입력받은 숫자와 저장된 숫자를 비교
		if(correctNum > num) {
			alert("입력받은 숫자보다 큽니다!");
		} else if(correctNum < num) {
			alert("입력받은 숫자보다 작습니다!");
		} else {
			alert("정답입니다!");
			break; // 현재 반복문을 빠져나감
		}
	}
	
	document.write("숫자 입력 횟수 : " + count);
	
}























