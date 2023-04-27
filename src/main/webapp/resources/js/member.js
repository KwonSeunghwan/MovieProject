function loginCheck() {
	if (document.frm.mem_id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		frm.mem_id.focus();
		return false;
	}
	if (document.frm.mem_pw.value == "") {
		alert("암호는 반드시 입력해야 합니다.");
		frm.mem_pw.focus();
		return false;
	}
	return true;
}


function idCheck() {
	
	var regExp = /[a-zA-Z0-9]{4,12}$/;

	if (document.frm.mem_id.value == "") {
		alert('아이디를 입력하여 주십시오.');
		document.frm.mem_id.focus();
		return;
	}
	
	if (!regExp.test($("#mem_id").val())) { //아이디 유효성검사            
		alert("Id는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	var url = "idCheck.do?mem_id=" + document.frm.mem_id.value;
	window.open(url, "_blank_1",		// 팝업창 띄우기
		"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}


function idJoinCheck() {

	var regExp = /[a-zA-Z0-9]{4,12}$/;

	if (document.frm.mem_id.value.length == 0) {
		alert("Id를 입력해주세요.");
		frm.mem_id.focus();
		return false;
	}

	if (!regExp.test($("#mem_id").val())) { //아이디 유효성검사            
		alert("Id는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	return true;
}



function idok(mem_id) {
	opener.frm.mem_id.value = document.frm.mem_id.value;	// opener : 부모창(joinForm.jsp)
	opener.frm.reid.value = document.frm.mem_id.value;		// 아이디 중복체크를 완료했음을 저장
	self.close();		// 브라우저(팝업) 창을 닫는다.
}


function idModify() {	// 회원 정보 수정

	var RegExp = /[a-zA-Z0-9]{4,12}$/; //id와 pwassword 유효성 검사 정규식

	var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i

	var patternPhone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;

	if (document.frm.mem_pw.value == "") {
		alert("Password는 반드시 입력해야 합니다.");
		frm.mem_pw.focus();
		return false;
	}

	if (!RegExp.test($("#mem_pw").val())) { //패스워드 유효성검사            
		alert("Password는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	if (document.frm.mem_pw_check.value == "") {
		alert("Password 확인은 반드시 입력해야 합니다.");
		frm.mem_pw_check.focus();
		return false;
	}

	if (!RegExp.test($("#mem_pw_check").val())) { //패스워드 유효성검사            
		alert("Password 확인은 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	if (document.frm.mem_email.value == "") {
		alert("Email은 반드시 입력해야 합니다.");
		frm.mem_email.focus();
		return false;
	}

	if (!e_RegExp.test($("#mem_email").val())) { //이메일 유효성 검사            
		alert("올바른 이메일 형식이 아닙니다.");
		return false;
	}

	if (document.frm.mem_phone.value.length == 0) {
		alert("전화번호를 입력해주세요.");
		frm.mem_phone.focus();
		return false;
	}

	if (!patternPhone.test($("#mem_phone").val())) { //전화번호 유효성 검사  
		alert("올바른 전화번호 형식이 아닙니다.");
		return false;
	}
	return true;
}



function joinCheck() {

	var n_RegExp = /[가-힣]{2,15}$/; //이름 유효성검사 정규식

	var RegExp = /[a-zA-Z0-9]{4,12}$/; //id와 pwassword 유효성 검사 정규식

	var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i

	var patternPhone = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;

	if (document.frm.mem_name.value.length == 0) {
		alert("이름을 입력해주세요.");
		frm.mem_name.focus();
		return false;
	}
	if (!n_RegExp.test($("#mem_name").val())) { //아이디 유효성검사            
		alert("한글 2글자 이상 입력하세요.");
		return false;
	}


	if (document.frm.mem_id.value.length == 0) {
		alert("Id를 입력해주세요.");
		frm.mem_id.focus();
		return false;
	}

	if (!RegExp.test($("#mem_id").val())) { //아이디 유효성검사            
		alert("Id는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	if (document.frm.mem_pw.value == "") {
		alert("Password는 반드시 입력해야 합니다.");
		frm.mem_pw.focus();
		return false;
	}

	if (!RegExp.test($("#mem_pw").val())) { //패스워드 유효성검사            
		alert("Password는 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	if (document.frm.mem_pw_check.value == "") {
		alert("Password 확인은 반드시 입력해야 합니다.");
		frm.mem_pw_check.focus();
		return false;
	}

	if (!RegExp.test($("#mem_pw_check").val())) { //패스워드 유효성검사            
		alert("Password 확인은 4~12자의 영문 대소문자와 숫자로만 입력하여 주세요.");
		return false;
	}

	/*	if(mem_id.value==mem_pw.value){ //패스워드와 ID가 동일한지 검사            
			alert("Password는 Id와 동일하면 안됩니다.");            
			return false;        
		}
	
		if(mem_pw.value==mem_pw_check.value){ //비밀번호와 비밀번호확인이 동일한지 검사            
			alert("두 비밀번호가 맞지 않습니다. 다시 확인하여 입력해주세요.");            
			return false;        
		}*/

	if (document.frm.mem_email.value == "") {
		alert("Email은 반드시 입력해야 합니다.");
		frm.mem_email.focus();
		return false;
	}

	if (!e_RegExp.test($("#mem_email").val())) { //이메일 유효성 검사            
		alert("올바른 이메일 형식이 아닙니다.");
		return false;
	}

	if (document.frm.mem_phone.value.length == 0) {
		alert("전화번호를 입력해주세요.");
		frm.mem_phone.focus();
		return false;
	}

	if (!patternPhone.test($("#mem_phone").val())) { //전화번호 유효성 검사  
		alert("올바른 전화번호 형식이 아닙니다.");
		return false;
	}


	if (document.frm.reid.value.length == 0) {
		alert("중복 체크를 하지 않았습니다.");
		frm.mem.id.focus();
		return false;
	}
	return true;
}


/*
var clockTarget = document.getElementById("clock");


function clock() {
	var date = new Date();

	// date Object를 받아오고 
	var month = date.getMonth();

	// 달을 받아옵니다 
	var clockDate = date.getDate();

	// 몇일인지 받아옵니다 
	var day = date.getDay();

	// 요일을 받아옵니다. 
	var week = ['일', '월', '화', '수', '목', '금', '토'];

	// 요일은 숫자형태로 리턴되기때문에 미리 배열을 만듭니다. 
	var hours = date.getHours();

	// 시간을 받아오고 
	var minutes = date.getMinutes();

	// 분도 받아옵니다.
	var seconds = date.getSeconds();

	// 초까지 받아온후 
	clockTarget.innerText = `${month + 1}월 ${clockDate}일 ${week[day]}요일` +

		`${hours < 10 ? `0${hours}` : hours}:${minutes < 10 ? `0${minutes}` : minutes}:${seconds < 10 ? `0${seconds}` : seconds}`;

	// 월은 0부터 1월이기때문에 +1일을 해주고 

	// 시간 분 초는 한자리수이면 시계가 어색해보일까봐 10보다 작으면 앞에0을 붙혀주는 작업을 3항연산으로 했습니다. 
}



function init() {

	clock();

	// 최초에 함수를 한번 실행시켜주고 
	setInterval(clock, 1000);

	// setInterval이라는 함수로 매초마다 실행을 해줍니다.

	// setInterval은 첫번째 파라메터는 함수이고 두번째는 시간인데 밀리초단위로 받습니다. 1000 = 1초 

}


init();*/

function memberCheck() {
/*	if (document.frm.name.value.length == 0) {
		alert("작성자를 입력하세요.");
		return false;
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}*/
	if (document.frm.mem_name.value.length == 0) {
		alert("이름을 입력하세요.");
		return false;
	}
	return true;
}




