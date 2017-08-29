import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

/**
 * PackageDir: 
 * FileName: SendHtmlMail.java
 * CreateDate: 2009-11-16 上午10:05:58
 */

/**
 * Project: 16_sendmail <br />
 * ClassName: SendHtmlMail <br />
 * Description: <br />
 * Copyright: Copyright (c) 2009 <br />
 * Company: Bold's Studio <br />
 * 
 * @author 
 * @version 1.0 2009-11-16
 * 
 */
public class SendHtmlMail {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		// Get system properties
		Properties props = System.getProperties();
		// Setup mail server
		props.put("mail.smtp.host", "smtp.tom.com");
		props.put("mail.smtp.auth", "true");

		// Get Session
		Session session = Session.getInstance(props, new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() { /* 若服务器需要身份认证，Sission会自动调用这个方法 */
				return new PasswordAuthentication("liuzhanhong315", "abcabc");
			}
		});

		// Define message
		MimeMessage message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress("liuzhanhong315@tom.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("liuzp315@tom.com"));
			message.setSubject("Hello JavaMail");
			//message.setText("Welcome to JavaMail");
			
			//发送Html格式的邮件
			//设定邮件的MIME类型(text/plain或text/html)
			MimeBodyPart mimeBodyPart = new MimeBodyPart();
			mimeBodyPart.setContent("<h2>测试</h2><b>你好</b>这是一个HTML格式的邮件", "text/html;charset=GB2312");
			//邮件类型添加到一个MimeMultipart中
			MimeMultipart mimeMultipart = new MimeMultipart();
			mimeMultipart.addBodyPart(mimeBodyPart);
			//设置邮件内容
			message.setContent(mimeMultipart);
			
			// send message
			message.setHeader("X-Mailer", "smtpsend");
			message.setSentDate(new Date());
			Transport.send(message);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
