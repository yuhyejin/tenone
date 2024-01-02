package com.hyesun.tenone;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyesun.tenone.domain.Goods;
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
	@GetMapping("/goodsView")
	public String getGoodsView(@RequestParam(value="goodsId",required=false,defaultValue="") Integer goodsId, Model model) throws Exception {
		logger.info("get goodsView");
		
		List<Goods> goodsViewList = goodsService.getGoodsView(goodsId);
		model.addAttribute("goodsView", goodsViewList);
		return "user/goodsView";
	}

}
