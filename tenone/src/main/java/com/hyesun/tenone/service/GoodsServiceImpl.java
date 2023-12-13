package com.hyesun.tenone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.persistence.GoodsDao;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	GoodsDao goodsDao;
	
	@Override
	public List<Goods> getGoodsCategory(String cateCode) throws Exception {
		return goodsDao.getGoodsCategory(cateCode);
	}

}
