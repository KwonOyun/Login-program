<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원 가입 창</title>
<script type="text/javascript" src="hw1.js" charset='utf-8'></script>
</head>
<body>
	<div
		style="border: 1px solid black; padding: 20px; text-align: center;">
		2017 웹 프로그래밍 HW1 <br> 본 약관은 "HW1-회원가입"서비스를 이용하기 위해서는 회원등록을         
		완료해야합니다.
	</div>
	<div style="text-align: center; margin-left: 38%">
		<form action="complete.jsp">
			<table>
				<tr>
					<td></td>
					<td><input type="checkbox" name="agreement" required>
						약관에 동의합니다. <br></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="ID" id="identity" placeholder="문자 or 숫자"  required pattern="[a-zA-Z0-9]{6,10}"></td>    <!-- 아이디 입력란 -->
					<td><input type="button" value="중복확인" onclick="duplication()"></td>   <!-- 중복확인 버튼 -->
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" id="password1" name="PW"
						placeholder="문자+숫자, 8자리 이상" required pattern="[0-9a-zA-Z]{6,20}"></td>          <!-- 비밀번호 입력란 -->
				</tr>
				<tr>
					<td>Password확인</td>    <!-- 비밀번호 확인란 -->
					<td><input type="password" id="password2" onchange="PWcheck()" required></td>
					<td></td>
				</tr>
				<tr>
					<td>이름</td>  <!-- 이름 입력란 -->
					<td><input type="text" id="name" placeholder="문자열만 입력 가능" name="Name1" onchange="Namecheck()" required></td>
				</tr>
				<tr>
					<td>전화번호</td> <!-- 전화번호 입력란  -->
					<td><input type="text" id="ph" name="PhoneNumber" placeholder="ex)01(0)-000(0)-0000" onchange="Phcheck()" required></td>
				</tr>
				<tr>
					<td>이메일</td>        <!-- 이메일 입력란 -->
					<td><input type="text" id="email" name="Email" onchange="Emailcheck()" required></td>
				</tr>
				<tr>
					<td>생년월일</td>  <!-- 생년월일 입력란 -->
					<td><input type="date" id="birthday" name="bday" required></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="회원가입"></td>
				</tr>
			</table>
		</form>
	</div>


</body>
</html>