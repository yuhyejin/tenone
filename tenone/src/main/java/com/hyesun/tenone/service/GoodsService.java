package com.hyesun.tenone.service;

import java.util.List;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.domain.Like;

public interface GoodsService {
	
	// 카테고리
	public List<Goods> getGoodsCategory(String cateCode) throws Exception;
	
	// 상세조회
	public Goods getGoodsView(Integer goodsId) throws Exception;

	// 상품 찜 여부 확인용 데이터
	public Like getGoodsLikeVal(Integer goodsId);

	// 상품 찜하기 
	public void setGoodsLike(Like like);

	// 상품 찜하기 취소 
	public void goodsLikeCancel(Like like);
	
	// 찜하기 목록
	public List<Goods> getLikeList(String luserId);
	
	// 찜 갯수
	public int likeCount(String luserId);

}
