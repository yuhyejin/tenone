package com.hyesun.tenone.persistence;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface AdminDao {
	
	// 상품등록
	public void write(Goods gd) throws Exception;
	
	// 상품목록
	public List<Goods> goodsList(String sellerId) throws Exception;

}
