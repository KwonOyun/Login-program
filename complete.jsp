<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.Address" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Authenticator" %>
<%@ page import="java.util.Properties" %>
<%@ page import="kr.pe.hoyanet.mail.SMTPAuthenticator" %>
<%@ page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>join process</title>
<script type="text/javascript" src="hw1.js" charset='utf-8'></script>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");         //utf-8형식으로 인코딩
		String userID = request.getParameter("ID");    //회원 정보들을 받아와서 각 변수에 입력
		String PW = request.getParameter("PW");
		String Name = request.getParameter("Name1");
		String Number = request.getParameter("PhoneNumber");
		String email = request.getParameter("Email");
		String bday = request.getParameter("bday");
		File directory = new File("C:\\homework1");    //정보 텍스트를 저장할 디렉토리 
		directory.mkdir();     //디렉토리 생성

		String filename = "C:\\homework1\\" + userID + ".txt";     //ID로 텍스트파일을 만들고 각 변수들에 있는 내용들을 write함수를 사용하여 입력
		File file = new File(filename);
		FileOutputStream fos = new FileOutputStream(filename);
		fos.write(PW.getBytes());
		fos.write("\n".getBytes());
		fos.write(Name.getBytes());
		fos.write("\n".getBytes());
		fos.write(Number.getBytes());
		fos.write("\n".getBytes());
		fos.write(email.getBytes());
		fos.write("\n".getBytes());
		fos.write(bday.getBytes());
		fos.write("\n".getBytes());

		out.print("인증 메일이 발송되었습니다. (" + email + ")로 발송된 이메일을 확인 후, 이메일에 첨부된 URL을  클릭하시면 회원가입이 완료됩니다.");

		Properties p = new Properties();    //properties객체를 생성하고 메일을 보내기 위한 여러 정보들을 put함수를 통해 입력
		p.put("mail.smtp.user", "oyoon33@gmail.com");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		//SMTP 서버에 접속하기 위한 정보들

		String content = "아래[인증하기]버튼을 클릭하면 회원가입이 완료됩니다.<br>";         //메일 내용
		content+="<a href='http://localhost:8181/HW1/Emailsuccess.jsp'>인증하기</a>";
		String from = "oyoon33@gmail.com";  //보내는 사람 메일
		String subject = "2017 웹프로그래밍(HW1) 회원가입을 위해 인증을 진행해주세요.";  //메일 제목
		try {
			Authenticator auth = new SMTPAuthenticator();
			Session ses = Session.getInstance(p, auth);
			
			//메일을 전송할 때 상세한 상황을 콘솔에 출력한다.
			ses.setDebug(true);

			//메일의 내용을 담기 위한 객체
			MimeMessage msg = new MimeMessage(ses); 
			
			//제목 설정
			msg.setSubject(subject);

			//보내는 사람의 메일 주소
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr);

			//받는 사람의 메일 주소
			Address toAddr = new InternetAddress(email);
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			
			//메세지 본문의 내용과 형식, 캐릭터 셋 설정
			msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩
			
			//발송하기
			Transport.send(msg); 

		} catch (Exception mex) {
			mex.printStackTrace();
			String script = "<script type='text/javascript'>\n";
			script += "alert('메일발송에 실패했습니다.');\n";
			script += "history.back();\n";
			script += "</script>";
			out.print(script);
			return;
		}

		out.println("<script>alert('메일발송에 성공했습니다!!');</script>");
		// 성공 시
	%>

</body>
</html>