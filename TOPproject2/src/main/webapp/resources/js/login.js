


function formCheck(){
	var id = $("#loginID").val();
	var pw = $("#loginPW").val();

	if( (id != '') && (pw != '') )
		return true;
	else
		alert('아이디와 비밀번호를 모두 입력해주십시오.'); return false;
}