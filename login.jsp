<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="hw1.js" charset='utf-8'></script>
<title>login page</title>
</head>

<body style="margin-top: 40px;">
	<table style="text-align: center; margin: auto;">
		<tr>
			<td>ID</td><td><input type="text" id="loginID" style="border: 3px dotted black"></td>   <!-- 아이디 입력란 -->
		</tr>
		<tr>
			<td>Password</td><td><input type="password" id="loginPW" style="border: 3px dotted black"></td>  <!-- 비밀번호 입력란 -->
		</tr>
	</table>
	<div style="margin-left: 46%; margin-top:20px;" >
		<input type="button" value="로그인" style="color: blue; width: 100px;" onclick="login();">   <!-- 로그인을 시도하는 버튼 -->
		<input type="button" value="회원가입" style="color: blue; width: 100px;" onclick="location.href='JoinForm.jsp'">  <!-- 회원가입을 하는 버튼 -->
	</div>
</body>
</html>