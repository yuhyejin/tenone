package com.hyesun.tenone.service;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface GoodsService {
	
	// 카테고리
	public List<Goods> getGoodsCategory(String cateCode) throws Exception;

}
