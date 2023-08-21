//package com.hyesun.tenone;
//
//import java.util.List;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.hyesun.tenone.domain.Goods;
//import com.hyesun.tenone.service.AdminService;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
//public class AdminWriteTest {
//	
//	@Autowired
//	private AdminService service;
//	
//	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
//	
//	// 상품 등록 테스
////	@Test
////	public void adminWriteTest() throws Exception {
////		
////		Goods gd = new Goods();
////		gd.setSellerId("hjeu@naver.com");
////		gd.setGoodsName("마우스");
////		gd.setCateCode("생일 선물");
////		gd.setGoodsContents("조용하고 잘 움직입니다");
////		gd.setGoodsDeli("무료배송");
////		gd.setGoodsOtp("회색");
////		gd.setGoodsPrice(20000);
////		gd.setGoodsStatu("판매중");
////		gd.setGoodsStock(4);
////		
////		service.write(gd);
////		
////	}
//	
//	// 상품 목록 테스
//	@Test
//	public void adminGoodsList() throws Exception {
//		String sellerId = "hj_eu@naver.com";
//		List<Goods> list = service.goodsList(sellerId);
//		for(int i=0; i<list.size(); i++) {
//			logger.info("" + list.get(i));
//		}
//	}
//	
//	
//
//}
