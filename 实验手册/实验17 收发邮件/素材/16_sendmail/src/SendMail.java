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
import javax.mail.internet.MimeMessage;

/**
 * PackageDir: 
 * FileName: SendMail.java
 * CreateDate: 2009-11-13 下午12:54:45
 */

/**
 * Project: 16_sendmail <br />
 * ClassName: SendMail <br />
 * Description: <br />
 * Copyright: Copyright (c) 2009 <br />
 * Company: Bold's Studio <br />
 * 
 * @author 
 * @version 1.0 2009-11-13
 * 
 */
public class SendMail {

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
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress("liuzhanhong315@tom.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress("liuzp315@tom.com"));
			message.setSubject("test");
			message.setText("hi.Welcome to JavaMail");
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
