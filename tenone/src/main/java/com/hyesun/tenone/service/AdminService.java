package com.hyesun.tenone.service;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface AdminService {
	
	// 상품등록
	public void write(Goods gd) throws Exception;
	
	// 상품목록
	public List<Goods> goodsList(String sellerId) throws Exception;
	
	// 상품조회
	public Goods goodsView(Integer goodsId, String sellerId) throws Exception;

	// 상품수정
	public void goodsUpdate(Goods gd) throws Exception;
	
	// 상품삭제
	public void goodsDelete(Integer goodsId, String sellerId) throws Exception;
}
