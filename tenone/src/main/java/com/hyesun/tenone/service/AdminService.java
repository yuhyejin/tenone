package com.hyesun.tenone.service;

import java.util.List;

import com.hyesun.tenone.domain.Goods;

public interface AdminService {
	
	// 상품등록
	public void write(Goods gd) throws Exception;
	
	// 상품조회
	public Goods goodsView(Integer goodsId, String sellerId) throws Exception;

	// 상품수정
	public void goodsUpdate(Goods gd) throws Exception;
	
	// 상품삭제
	public void goodsDelete(Integer goodsId, String sellerId) throws Exception;

	// 게시물 총 갯수
	public int goodsCount(String sellerId) throws Exception;
	
	// 게시물 목록 + 페이징
	public List<Goods> getListPaging(String sellerId, int displayPost, int postNum) throws Exception;
}
