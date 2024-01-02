package com.hyesun.tenone.persistence;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface GoodsDao {
	
	// 카테고리
	public List<Goods> getGoodsCategory(String cateCode) throws Exception;
	
	// 상세조회
	public List<Goods> getGoodsView(Integer goodsId) throws Exception;

}
