function loginCheck(){
	if(document.frm.userid.value.length == 0) {
		alert("아이디를 입력해주세요");
		frm.userId.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("비밀번호 입력해주세요");
		frm.pwd.focus();
		return false;
	}
	return true;
}
function idCheck(){
	if(document.frm.userid.value == ""){
		alert("아이디를 입력해주세요");
		console.log("dasdasdad");
		return;
	}
	
	let url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url,"_blank_1","toolbar=no,menubar=no,scrollbars=yes,resizeable=no,width=450,height=200");
}
function idOk(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
	
}
