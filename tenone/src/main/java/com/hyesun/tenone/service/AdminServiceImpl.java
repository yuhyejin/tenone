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
	
	// 상품목록
	@Override
	public List<Goods> goodsList(String sellerId) throws Exception {
		System.out.println("서비스");
		return adminDao.goodsList(sellerId);
	}

}
