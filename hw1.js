
function duplication(){   //중복을 확인하기 위한 함수
	var userid = document.getElementById('identity');   //identity의 객체 생성
	window.open('IdCheckForm.jsp?name='+userid.value,'width=50, height=50');  //아이디의 값을 넘겨주고 아이디 중복체크하는 화면을 띄움
}

function retryinput(){  //중복아이디가 있어서 다시 입력하는 함수
	opener.document.getElementById('identity').value="";  //아이디 입력란을 비우고 커서를 위치
	opener.document.getElementById('identity').focus();
}
function availableinput(){   //사용가능한 아이디를 입력했을 경우에 비밀번호입력란에 커서를 위치
	opener.document.getElementById('password1').focus(); 
}

function PWcheck(){  //비밀번호 체크 함수
	if(document.getElementById('password1').value !== document.getElementById('password2').value){  //비밀번호가 서로 다른 경우 비밀번호확인란을 비우고 커서를 위치
		alert('위에 입력한 비밀번호와 값이 다릅니다. 다시 입력해주세요.');
		document.getElementById('password2').value="";
		document.getElementById('password2').focus();
	
	}
	else{
		document.getElementById('name').focus();   //비밀번호확인란에 입력한 비밀번호가 비밀번호와 일치하면 이름입력란에 커서를 위치
	}
}

function Namecheck(){  //이름 체크 함수

	var symbol = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/;      //이름 체크를 위해 특수문자와 숫자를 변수로 저장
	var name = /[0-9].+/;
	if(name.test(document.getElementById('name').value) || symbol.test(document.getElementById('name').value)){  //특수문자나 숫자가 이름에 있을 경우 경고창을 띄우고 이름입력란을 비우고 커서를 위치
		alert("이름은 문자열만 입력 가능합니다.");
		document.getElementById('name').value='';
		document.getElementById('name').focus();
	}
	else{
		document.getElementById('ph').focus();  //올바르게 입력햇을 경우 전화 번호 입력란에 커서를 위치
	}
}

function Phcheck(){   //번호 체크 함수
	var number = /^\d{3}-\d{3,4}-\d{4}$/;   //전화번호 입력 양식을 변수로 저장
	if(!number.test(document.getElementById('ph').value)){  //전화번호 입력 양식이 다를 경우 경고창을 띄우고 전화번호 입력란을 비우고 커서를 위치
		alert("전화번호 형식을 지켜주세요.");
		document.getElementById('ph').value="";
		document.getElementById('ph').focus();
	}
}

function Emailcheck(){  //이메일 체크 함수
	var address = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;  //이메일 주소 양식을 변수로 저장
	if(!address.test(document.getElementById('email').value)){  //이메일 형식과 다르게 입력할 경우 경고창을 띄우고 이메일입력란을 비우고 커서를 위치
		alert("이메일 형식을 지켜주세요.");
		document.getElementById('email').value="";
		document.getElementById('email').focus();
	}
}

function login(){  //로그인을 하는 함수
	var userid = document.getElementById("loginID");  //아이디와 패스워드를 변수에 저장
	var pw = document.getElementById("loginPW");
	
	location.href='loginsuccess.jsp?id='+userid.value+'&pw='+pw.value;  //아이디와 비밀번호를 loginsuccess.jsp파일로 넘겨주고 location.href를 loginsuccess.jsp로 설정 
}
