package kr.pe.hoyanet.mail;

import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends javax.mail.Authenticator {
    public PasswordAuthentication getPasswordAuthentication() {
        
        return new PasswordAuthentication("oyoon33", "wlswn3709*");
    }
}