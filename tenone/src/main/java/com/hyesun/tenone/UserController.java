package com.hyesun.tenone;


import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyesun.tenone.domain.User;
import com.hyesun.tenone.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService userService;
	
	@Autowired(required=false)
	BCryptPasswordEncoder passEncoder;
	
	@Autowired
	private JavaMailSender mailSender;
	
	// 회원가입 get
	@GetMapping("/register")
	public String getRegister() throws Exception {
		logger.info("get register");
		
		return "register";
	}
	
	// 회원가입 post
	@PostMapping("/register")
	public String postRegister(User user) throws Exception {
		logger.info("post register");
		
		String inputPass = user.getUser_pwd();
		String pass = passEncoder.encode(inputPass);
		user.setUser_pwd(pass);
		
		if(user.getShop_name() != "") {
			logger.info("샵네임이이이이잉======"+user.getShop_name());
			user.setAdminCk(1);
		}
		
		userService.register(user);
		
		return "redirect:/";
	}
	
	// 로그인 get
	@GetMapping("/login")
	public String getLogin() throws Exception {
		logger.info("get login");
		return "login";
	}
	
	// 로그인 post
	@PostMapping("/login")
	public String postLogin(User user, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");
		
		User login = userService.login(user);
		HttpSession session = req.getSession();
		
		boolean passMatch = passEncoder.matches(user.getUser_pwd(), login.getUser_pwd());
		
		if(login != null && passMatch) {
			session.setAttribute("user", login);
			return "redirect:/tenone";
		} else {
			session.setAttribute("user", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login";
		}
		//return "redirect:/tenone";
	}
	
	// 로그아웃 
	@GetMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");
		
		userService.logout(session);
		return "redirect:/";
	}
	
	// 이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public Integer mailCheckGET(String email) throws Exception {
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);
		
		// 인증번호(난수) 생성
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 " + checkNum);
		
		// 이메일 보내기
		String setFrom = "dydxkqgl@naver.com";
		String toMail = email;
		String title = "십일 회원가입 인증 이메일 입니다.";
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." +
				"<br><br>" +
				"인증 번호는 " + checkNum + "입니다." +
				"<br>" +
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return checkNum;
	}
	
}
