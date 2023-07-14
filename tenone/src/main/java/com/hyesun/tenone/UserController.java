package com.hyesun.tenone;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@PostMapping("/register")
	public String postRegister(User user) throws Exception {
		logger.info("post register");
		
		String inputPass = user.getUser_pwd();
		String pass = passEncoder.encode(inputPass);
		user.setUser_pwd(pass);
		
		userService.register(user);
		
		return "redirect:/";
	}

}
