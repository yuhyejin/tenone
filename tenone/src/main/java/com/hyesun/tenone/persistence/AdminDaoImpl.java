package com.hyesun.tenone.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyesun.tenone.domain.Goods;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace = "com.hyesun.tenone.mapper.AdminMapper.";
	
	// 상품등록
	@Override
	public void write(Goods gd) throws Exception {
		session.insert(namespace + "write", gd);
	}
	
	// 상품목록
	public List<Goods> goodsList(String sellerId) throws Exception {
		return session.selectList(namespace+"goodslist",sellerId);
	}
	
}
