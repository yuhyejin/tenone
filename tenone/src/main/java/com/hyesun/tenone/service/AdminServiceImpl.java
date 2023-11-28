package com.hyesun.tenone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.persistence.AdminDao;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	// 상품등록
	@Override
	public void write(Goods gd) throws Exception {
		adminDao.write(gd);
	}
	
	// 상품조회
	@Override
	public Goods goodsView(Integer goodsId, String sellerId) throws Exception {
		return adminDao.goodsView(goodsId, sellerId);
	}

	// 상품수정
	@Override
	public void goodsUpdate(Goods gd) throws Exception {
		adminDao.goodsUpdate(gd);
	}
	
	// 상품삭제
	public void goodsDelete(Integer goodsId, String sellerId) throws Exception {
		adminDao.goodsDelete(goodsId, sellerId);
	}
	
	// 게시물 총 갯수
	@Override
	public int goodsCount(String sellerId) throws Exception {
		return adminDao.goodsCount(sellerId);
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<Goods> getListPaging(String sellerId, int displayPost, int postNum) throws Exception {
		return adminDao.getListPaging(sellerId, displayPost, postNum);
	}
	
	// 판매자 정보
	@Override
	public Goods sellerInfo(String sellerId) throws Exception {
		return adminDao.sellerInfo(sellerId);
	}
	
}
