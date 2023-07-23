package com.hyesun.tenone;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	AdminService adminService;
	
	@PostMapping("/write")
	public String goodsWrite(Goods gd) throws Exception {
		adminService.write(gd);
		return "redirect:/admin";
	}

}
