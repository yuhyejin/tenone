package com.hyesun.tenone;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.domain.Like;
import com.hyesun.tenone.domain.User;
import com.hyesun.tenone.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Inject
	private GoodsService goodsService;
	
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	
	// 상품 메인홈
	@GetMapping("/")
	public String goodsMain() throws Exception {
		logger.info("get goods write");
		return "user/userMain";
	}
	
	// 카테고리 
	@GetMapping("/category/{cateCode}")
	public String getCategoryGoods(@PathVariable String cateCode, Model model) throws Exception {
		logger.info("get category");
		
		List<Goods> goodsList = goodsService.getGoodsCategory(cateCode);
		
		model.addAttribute("goodsList", goodsList);
		return "user/goodsList";
	}
	
	// 상세조회
	@GetMapping("/goodsView/{goodsId}")
	public String getGoodsView(@PathVariable Integer goodsId, Model model, HttpServletRequest req) throws Exception {
		logger.info("get goodsView");
		
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String userId = (String)sellerInfo.getUser_id();
		
		if(goodsId != null) {
			Goods goodsViewList = goodsService.getGoodsView(goodsId);
			model.addAttribute("goodsView", goodsViewList);
			logger.info("get likeVal");
			System.out.println("222222===" + goodsService.getGoodsLikeVal(goodsId));
			model.addAttribute("likeVal", goodsService.getGoodsLikeVal(goodsId));
			model.addAttribute("userId", userId);
		} else {
			System.out.println("dadasd== null 입니다.");
		}
		return "user/goodsView";
	}
	
	// 상품 상세페이지 찜하기
	@PostMapping("/{goodsId}")
	public ResponseEntity<String> goodsLike(@RequestBody Like like) {
		ResponseEntity<String> entity = null;
		logger.info("post goodsLike");
		
		try {
			System.out.println("ddddd=== " + like );
			goodsService.setGoodsLike(like);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// 상품 상세페이지 찜취소
	@DeleteMapping("/{goodsId}")
	public ResponseEntity<String> goodsLikeCancel(Like like) {
		ResponseEntity<String> entity = null;
		logger.info("delete goodsLikeCancel");
		
		try {
			System.out.println("ooooo==" + like);
			goodsService.goodsLikeCancel(like);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping("/likeList")
	public String getLikeList(Model model, HttpServletRequest req) {
		logger.info("get getLikeList");
		
		HttpSession session = req.getSession();
		User sellerInfo = (User)session.getAttribute("user");
		String userId = (String)sellerInfo.getUser_id();
		
		List<Goods> likeList = goodsService.getLikeList(userId);
		int likeCount = goodsService.likeCount(userId);
		System.out.println("찜 갯수===== " + likeCount);
		
		model.addAttribute("likeList", likeList);
		model.addAttribute("likeCount", likeCount);
		
		return "user/likeList";
	}

}
