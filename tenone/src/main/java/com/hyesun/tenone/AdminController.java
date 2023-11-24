
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
import com.hyesun.tenone.domain.User;
import com.hyesun.tenone.service.AdminService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	AdminService adminService;
	
	// 상품 등록 Get
	@GetMapping("/write")
	public String getGoodsWrite() throws Exception {
		logger.info("get goods write");
		return "admin/adminWrite";
	}
	
	// 상품 등록 Post
	@PostMapping("/write")
	public String goodsWrite(Goods gd, HttpServletRequest req) throws Exception {
		logger.info("post goods write");
		
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		gd.setSellerId(sellerId);
		System.out.println("goods=====> " + gd);
		adminService.write(gd);
		
		logger.info("상품 등롞!");
		return "redirect:list";
	}

	// 상품 목록 
	@GetMapping("/list")
	public String getGoodsList(User user, HttpServletRequest req, Model model) throws Exception {
		logger.info("get goods list");
		
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		List<Goods> list = adminService.goodsList(sellerId);
		model.addAttribute("list", list);
		return "admin/adminHome";
	}
	
	// 상품 조회 
	@GetMapping("/view")
	public String getGoodsView() throws Exception {
		logger.info("get goods view");
		return "view";
	}

}
