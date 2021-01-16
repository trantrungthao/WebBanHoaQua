package com.project.mail;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class SendMail {
	public static void sendMail(String mail, String subject, String text) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("mail.xml");
	    MailSender mailSender = (MailSender) context.getBean("mailSender");
	    System.out.println("Đang gửi mail...");
	    SimpleMailMessage message = new SimpleMailMessage();
	    message.setFrom("trungthaoweb@gmail.com");
	    message.setTo(mail);
	    message.setSubject(subject);
	    message.setText(text);
	    // Gửi tin nhắn
	    mailSender.send(message);
	    System.out.println("Đã gửi thành công");
	    context.close();
	}
	
	public static void main(String[] args) {
		sendMail("17130218@st.hcmuaf.edu.vn", "Website Bán Hoa Quả", "Test");
	}
}
