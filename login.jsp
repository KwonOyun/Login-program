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
			<td>ID</td><td><input type="text" id="loginID" style="border: 3px dotted black"></td>   <!-- ���̵� �Է¶� -->
		</tr>
		<tr>
			<td>Password</td><td><input type="password" id="loginPW" style="border: 3px dotted black"></td>  <!-- ��й�ȣ �Է¶� -->
		</tr>
	</table>
	<div style="margin-left: 46%; margin-top:20px;" >
		<input type="button" value="�α���" style="color: blue; width: 100px;" onclick="login();">   <!-- �α����� �õ��ϴ� ��ư -->
		<input type="button" value="ȸ������" style="color: blue; width: 100px;" onclick="location.href='JoinForm.jsp'">  <!-- ȸ�������� �ϴ� ��ư -->
	</div>
</body>
</html>