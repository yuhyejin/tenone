package com.hyesun.tenone;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
}
