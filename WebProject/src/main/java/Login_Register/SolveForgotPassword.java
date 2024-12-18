package Login_Register;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SolveForgotPassword
 */
@WebServlet("/SolveForgotPassword")
public class SolveForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* create code */
		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvwxyz" + "0123456789";
		StringBuilder term = new StringBuilder(10);
		Random random = new Random();
		for (int i = 0; i < 10; i++) {
			int index = random.nextInt(characters.length());
			term.append(characters.charAt(index));
		}
		String result = term.toString();

		// solve send mail
		String userMail = request.getParameter("userMail");
		System.out.println(userMail);
		final String from = "abctech112@gmail.com";
		final String pass = "sunzwnfiymjkdgbe";

		String to = userMail;

		// property
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");// tls 587 ssl 465
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		// create authenticator
		Authenticator auth = new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, pass);
			}
		};
		// session
		Session session = Session.getInstance(props, auth);
		// Gưi Email
		MimeMessage msg = new MimeMessage(session);
		try {
			msg.addHeader("Content-type", "text/HTML;  charset=UTF8");
			msg.setFrom(from);
			msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to.trim(), false));
			msg.setSubject("check email");
			msg.setSentDate(new Date());
			msg.setContent("<html>" + "<body>" + "<table border='1'><tr><td>Your code: </td> " + result + "</tr>"
					+ "</body>" + "</html>", "text/html");

			// gửi email
			Transport.send(msg);
			if (!result.isBlank() && result != null) {
				request.setAttribute("userMail", userMail);
				HttpSession session1 = request.getSession();
				session1.setAttribute("code", result);
				response.sendRedirect(request.getContextPath() +"/views/Confirm.jsp");
			}
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
