package portals;
import java.io.File;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

class BabyAuthenticator extends Authenticator
{
	@Override
	protected PasswordAuthentication 
	getPasswordAuthentication() 
	{
		// create object of PasswordAuthentication class
		PasswordAuthentication pa = new 
				PasswordAuthentication
				("eeshutyagi@gmail.com","ishani1998");	
		
		// return the object of PA
		return pa;
	}
}

public class Sendmail 
{

	 
	public static void main(String args) 
	{	
	 
		try 
		{
		// create object of properties class
		Properties p = new Properties();
		
		p.put("mail.smtp.host","smtp.gmail.com");
		p.put("mail.smtp.port","587");
		p.put("mail.smtp.starttls.enable","true");
		p.put("mail.smtp.auth","true");
		p.put("mail.debug","true");
		p.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		// create object of baby-authenticator
		Authenticator auth = new BabyAuthenticator();
		
		// create object of session using 'p' and 'auth'
		Session session = Session.getInstance(p, auth);

		// create a message that can be sent using this session
		MimeMessage message = new MimeMessage(session);
		
		message.setFrom
		(new InternetAddress("eeshutyagi@gmail.com"));
		
		
		
		// specify the list of RCVRS using InternetAddress class
		InternetAddress rcvr1 = new InternetAddress
				(args);
		

		
		// specify the message about the RCVR
		message.addRecipient(RecipientType.TO,rcvr1);
		
		// provide the subject of mail
		message.setSubject("Welcome message");
	      message.setContent("<i style='color : blue'>Hello you have successfully registered</i>", "text/html" );


		// create body parts of email using mime-body-part
		// class text as well as attachments
		//MimeBodyPart part1 = new MimeBodyPart();
		// associate text data with this body part
	//	part1.setContent("<i style='color : blue'>Hello you have successfully registered</i>","text/html");
		
		// create a second body part to attach a file
		//String filepath = "C:\\Users\\meena\\jk.jpg";
		
		// denote this path using file class
		//File file = new File(filepath);
		
		// create a body part to attach a file
		//MimeBodyPart part2 = new MimeBodyPart();
		
		// attach the file with body part
		//part2.attachFile(file);
		
		// create a multi-part to hold the body parts
		//MimeMultipart multipart = new MimeMultipart();
		
		// associate body-parts with multipart
		//multipart.addBodyPart(part1);
		//multipart.addBodyPart(part2);
		
		// associate multipart with message
	//	message.setContent(multipart);
		
		// send this message to the smtp-server
		Transport.send(message);
		
		System.out.println("OK");
		
		} 
		catch (Exception e) 
		{
			System.out.println("error "+e);
		}
	}
}











