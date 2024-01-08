package com.hyesun.tenone.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyesun.tenone.domain.Goods;
import com.hyesun.tenone.domain.Like;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace = "com.hyesun.tenone.mapper.GoodsMapper.";
	
	@Override
	public List<Goods> getGoodsCategory(String cateCode) throws Exception {
		return session.selectList(namespace + "selectCategory", cateCode);
	}

	@Override
	public Goods getGoodsView(Integer goodsId) throws Exception {
		return session.selectOne(namespace+"selectView", goodsId);
	}

	@Override
	public Like getGoodsLikeVal(Integer goodsId) {
		return session.selectOne(namespace+"getGoodsLikeVal", goodsId);
	}

	@Override
	public void setGoodsLike(Like like) {
		session.insert(namespace+"setGoodsLike", like);
	}

	@Override
	public void goodsLikeCancel(Like like) {
		session.delete(namespace+"goodsLikeCancel", like);
	}

	@Override
	public List<Goods> getLikeList(String luserId) {
		return session.selectList(namespace+"getLikeList", luserId);
	}

	@Override
	public int likeCount(String luserId) {
		return session.selectOne(namespace+"likeCount", luserId);
	}
	
}
