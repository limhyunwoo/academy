/**
 * @ Story: 회원가입시 동의 여부 체크
 */
var agreeChk = function() {  // 자바와 자스는 관계가 없다. 자스에서 사용하는 객체 선언이 이런식.
	var req = document.form.req.checked;  //var를 붙이지 않으면 스태틱이 된다. 붙이면 인스턴스객체
	var num = 0;										//자스에서는 무조건 var만 사용
	if (req == true) {
		num = 1;
	}
	if (num == 1) {
		document.form.submit();
	} else {
		alert("개인정보 약관에 동의하셔야 합니다.");
	}
}
var nochk = function(url){
	alert("동의하지 않으면 가입하실 수 없습니다");
	location.href = url;
}