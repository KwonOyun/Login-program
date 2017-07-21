<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>중복확인</title>
<script type="text/javascript" src="hw1.js" charset='utf-8'></script>
</head>
<body>
	<%
		String id = request.getParameter("name");
		File dir = new File("C:\\homework1");
		if (!dir.isDirectory()) {
			out.print("사용가능합니다.");
	%>
	<br>
	<input type="button" value="사용하기"
		onclick="availableinput(); window.close()">
	<!-- 아이디를 사용할 수 있을 경우 아이디를 사용하는 버튼 -->
	<%
		} 
		else {

			String filenames[] = dir.list();    //회원정보 텍스트를 배열에 저장
			boolean flag = true;  //해당하는 아이디 존재 여부를 확인하기 위한 boolean변수

			for (int i = 0; i < filenames.length; i++) {
				if ((id + ".txt").equals(filenames[i])) {    //해당 아이디가 있는 경우 flag를 false로 설정
					flag = false;
				}
			}

			if (flag) {           //flag가 true면 해당 아이디가 존재 하지 않는 것이기 때문에 사용가능하다고 출력
				out.print("사용가능합니다.");
	%>
	<br>
	<input type="button" value="사용하기"
		onclick="availableinput(); window.close()">
	<!-- 해당 아이디를 사용하는 버튼 -->
	<%
		} else {
				out.print("이미 사용중인 아이디 입니다.");
	%>
	<br>
	<input type="button" value="다시 입력"
		onclick="retryinput(); window.close()">
	<!-- 해당 아이디가 있을 경우 다시입력하는 버튼 -->
	<%
		}
		}
	%>

</body>
</html>