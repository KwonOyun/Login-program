<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ߺ�Ȯ��</title>
<script type="text/javascript" src="hw1.js" charset='utf-8'></script>
</head>
<body>
	<%
		String id = request.getParameter("name");
		File dir = new File("C:\\homework1");
		if (!dir.isDirectory()) {
			out.print("��밡���մϴ�.");
	%>
	<br>
	<input type="button" value="����ϱ�"
		onclick="availableinput(); window.close()">
	<!-- ���̵� ����� �� ���� ��� ���̵� ����ϴ� ��ư -->
	<%
		} 
		else {

			String filenames[] = dir.list();    //ȸ������ �ؽ�Ʈ�� �迭�� ����
			boolean flag = true;  //�ش��ϴ� ���̵� ���� ���θ� Ȯ���ϱ� ���� boolean����

			for (int i = 0; i < filenames.length; i++) {
				if ((id + ".txt").equals(filenames[i])) {    //�ش� ���̵� �ִ� ��� flag�� false�� ����
					flag = false;
				}
			}

			if (flag) {           //flag�� true�� �ش� ���̵� ���� ���� �ʴ� ���̱� ������ ��밡���ϴٰ� ���
				out.print("��밡���մϴ�.");
	%>
	<br>
	<input type="button" value="����ϱ�"
		onclick="availableinput(); window.close()">
	<!-- �ش� ���̵� ����ϴ� ��ư -->
	<%
		} else {
				out.print("�̹� ������� ���̵� �Դϴ�.");
	%>
	<br>
	<input type="button" value="�ٽ� �Է�"
		onclick="retryinput(); window.close()">
	<!-- �ش� ���̵� ���� ��� �ٽ��Է��ϴ� ��ư -->
	<%
		}
		}
	%>

</body>
</html>