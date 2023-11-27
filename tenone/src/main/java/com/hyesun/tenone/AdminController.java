
package com.hyesun.tenone;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@PostMapping("/postWrite")
	public String goodsWrite(Goods gd, HttpServletRequest req) throws Exception {
		logger.info("post goods write");
		
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		gd.setSellerId(sellerId);
		adminService.write(gd);
		System.out.println("아아아아ㅏ아!== :");
		
		return "redirect:list";
	}

	// 상품 수정 Get
	@GetMapping("/update/{goodsId}")
	public String getGoodsUpate(@PathVariable Integer goodsId, HttpServletRequest req, Model model) throws Exception {
		logger.info("get goods update");
		System.out.println("asdasda=== " + goodsId);
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		Goods goods = adminService.goodsView(goodsId, sellerId);
		model.addAttribute("goods", goods);
		
		return "admin/adminUpdate";
	}
	
	// 상품 수정 Post
	@PostMapping("/update")
	public String postGoodsUpate(Goods gd, HttpServletRequest req) throws Exception {
		logger.info("post goods update");
			
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		gd.setSellerId(sellerId);
		adminService.goodsUpdate(gd);
			
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
	
	// 상품삭제
	@GetMapping("/delete/{goodsId}")
	public String goodsDelete(@PathVariable Integer goodsId, HttpServletRequest req) throws Exception {
		logger.info("post goods delete");

		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String sellerId = (String)sellerInfo.getUser_id();
		System.out.println("sellerID ==== " + sellerId);
		
		adminService.goodsDelete(goodsId, sellerId);
		
		return "redirect:/admin/list";
	}
	
//	// 상품 조회 
//	@GetMapping("/view")
//	public void getGoodsView(@RequestParam("n") Integer goodsId, HttpServletRequest req, Model model) throws Exception {
//		logger.info("get goods view");
//		
//		HttpSession session = req.getSession();
//		User sellerInfo = (User)session.getAttribute("user");
//		String sellerId = (String)sellerInfo.getUser_id();
//		Goods goods = adminService.goodsView(goodsId, sellerId);
//		model.addAttribute("goods", goods);
//	}
	

}
