package com.hyesun.tenone;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	// 상품 등
	@PostMapping("/write")
	public String goodsWrite(Goods gd) throws Exception {
		adminService.write(gd);
		return "redirect:/admin";
	}
	
	// 상품 목록 
	@GetMapping("/list")
	public String getGoodsList(HttpServletRequest req, Model model) throws Exception {
		logger.info("get goods list");
		
		HttpSession session = req.getSession();
		String sellerId = (String)session.getAttribute("userId");
		List<Goods> list = adminService.goodsList(sellerId);
		model.addAttribute("list", list);
		return "list";
	}

}
