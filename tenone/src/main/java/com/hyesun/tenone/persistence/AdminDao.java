package com.hyesun.tenone.persistence;

import com.hyesun.tenone.domain.Goods;

public interface AdminDao {
	
	// 상품등록
	public void write(Goods gd) throws Exception;

}
