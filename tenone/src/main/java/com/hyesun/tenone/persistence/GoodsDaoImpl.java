package com.hyesun.tenone.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyesun.tenone.domain.Goods;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace = "com.hyesun.tenone.mapper.GoodsMapper.";
	
	@Override
	public List<Goods> getGoodsCategory(String cateCode) throws Exception {
		return session.selectList(namespace + "selectCategory", cateCode);
	}

	
}
