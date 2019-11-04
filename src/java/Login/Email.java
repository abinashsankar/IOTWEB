
package Login;
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

public class Email {

	public static void sendEmail(String host, String port,
            final String username, final String password, String toAddress,
            String subject, String message) throws AddressException, MessagingException {
	
		 Properties prop = new Properties();
	        prop.put("mail.smtp.host", host);			
	        prop.put("mail.smtp.port", port);
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        
	        Authenticator auth = new Authenticator() {
	            public PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        };
	 
	        Session session = Session.getInstance(prop, auth);
	        
	        Message msg = new MimeMessage(session);
	        
	        msg.setFrom(new InternetAddress(username));
	        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
	        msg.setRecipients(Message.RecipientType.TO, toAddresses);
	        msg.setSubject(subject);
	        msg.setSentDate(new Date());
	        msg.setText(message);
	        
	        Transport.send(msg);
	        
	}
}
