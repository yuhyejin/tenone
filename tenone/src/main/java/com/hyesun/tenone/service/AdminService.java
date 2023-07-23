package com.hyesun.tenone.service;

import com.hyesun.tenone.domain.Goods;

public interface AdminService {
	
	// 상품등록
	public void write(Goods gd) throws Exception;

}
