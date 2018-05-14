package com.potato.myapp.mail.ctrl;

import java.util.Date;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.potato.myapp.user.model.vo.UserVO;
import com.potato.myapp.user.service.UserService;

@Controller
@RequestMapping("/mail")
public class MailCtrl {

	@Resource(name = "userService")
	private UserService service;

	@RequestMapping(value = "/mail.dbinc", method = RequestMethod.POST)
	public String Mail(Model model, UserVO user, HttpServletRequest request) {

		UserVO namevo = service.name(user);

		if (namevo != null) {
			String email = request.getParameter("user_email");
			String password = MailCtrl.getRamdomPassword();
			user.setUser_pwd(password);
			service.password(user);

			System.out.println("이거는??????");

			Properties p = System.getProperties();
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.port", "587");

			Authenticator auth = new MyAuthentication();

			// session 생성 및 MimeMessage생성
			Session session = Session.getDefaultInstance(p, auth);
			MimeMessage msg = new MimeMessage(session);

			try {
				// 편지보낸시간

				System.out.println("이건 지나가나");

				System.out.println("이거느느느느느느");

				msg.setSentDate(new Date());
				InternetAddress from = new InternetAddress();

				from = new InternetAddress("dbmoneyhelp<dbmoneyhelp@gmail.com>");

				// 이메일 발신자
				msg.setFrom(from);

				// 이메일 수신자
				InternetAddress to = new InternetAddress(email);
				msg.setRecipient(Message.RecipientType.TO, to);

				// 이메일 제목
				msg.setSubject("DBMONEY 임시 비밀번호 ", "UTF-8");

				// 이메일 내용
				msg.setText("계정 : " + namevo.getUser_name() + "& 패스워드 : " + password, "UTF-8");

				// 이메일 헤더
				msg.setHeader("content-Type", "text/html");

				// 메일보내기
				javax.mail.Transport.send(msg);

			} catch (AddressException addr_e) {
				addr_e.printStackTrace();
			} catch (MessagingException msg_e) {
				msg_e.printStackTrace();
			}

			System.out.println("발사완료");

			
			model.addAttribute("alert", 1);
			return "/user/recoverPW";

		}

		model.addAttribute("alert", 0);
		return "/user/recoverPW";
	}

	class MyAuthentication extends Authenticator {

		PasswordAuthentication pa;

		public MyAuthentication() {

			String id = "dbmoneyhelp@gmail.com"; // 구글 ID
			String pw = "dbmoneyhelp!0"; // 구글 비밀번호

			// ID와 비밀번호를 입력한다.
			pa = new PasswordAuthentication(id, pw);

		}

		// 시스템에서 사용하는 인증정보
		public PasswordAuthentication getPasswordAuthentication() {
			return pa;
		}
	}

	public static String getRamdomPassword() {
		char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
		int idx = 0;
		StringBuffer sb = new StringBuffer();
		System.out.println("charSet.length :::: " + charSet.length);
		for (int i = 0; i < 10; i++) {
			idx = (int) (charSet.length * Math.random());

			System.out.println("idx :::: " + idx);
			sb.append(charSet[idx]);

		}

		return sb.toString();
	}

}
