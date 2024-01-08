package com.hyesun.tenone.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.domain.Like;
import com.hyesun.tenone.persistence.GoodsDao;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	GoodsDao goodsDao;
	
	@Override
	public List<Goods> getGoodsCategory(String cateCode) throws Exception {
		return goodsDao.getGoodsCategory(cateCode);
	}

	@Override
	public Goods getGoodsView(Integer goodsId) throws Exception {
		return goodsDao.getGoodsView(goodsId);
	}

	@Override
	public Like getGoodsLikeVal(Integer goodsId) {
		return goodsDao.getGoodsLikeVal(goodsId);
	}

	@Override
	public void setGoodsLike(Like like) {
		goodsDao.setGoodsLike(like);
	}

	@Override
	public void goodsLikeCancel(Like like) {
		goodsDao.goodsLikeCancel(like);
	}

	@Override
	public List<Goods> getLikeList(String luserId) {
		return goodsDao.getLikeList(luserId);
	}

	@Override
	public int likeCount(String luserId) {
		return goodsDao.likeCount(luserId);
	}

}
