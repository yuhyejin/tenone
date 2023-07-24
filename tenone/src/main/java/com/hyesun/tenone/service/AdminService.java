package com.hyesun.tenone.service;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface AdminService {
	
	// 상품등록
	public void write(Goods gd) throws Exception;
	
	// 상품목록
	public List<Goods> goodsList(String sellerId) throws Exception;

}
