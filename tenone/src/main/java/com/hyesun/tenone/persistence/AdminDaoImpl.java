package com.hyesun.tenone.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	@Override
	public List<Goods> goodsList(String sellerId) throws Exception {
		return session.selectList(namespace+"goodslist",sellerId);
	}
	
	// 상품조회
	@Override
	public Goods goodsView(Integer goodsId, String sellerId) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("goodsId", goodsId);
		params.put("sellerId", sellerId);
		return session.selectOne(namespace+"goodsView", params);
	}
	
	// 상품수정
	@Override 
	public void goodsUpdate(Goods gd) throws Exception {
		session.update(namespace + "goodsUpdate", gd);
	}
	
	// 상품삭제
	public void goodsDelete(Integer goodsId, String sellerId) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("goodsId", goodsId);
		params.put("sellerId", sellerId);
		System.out.println("hashmap ====: " + params);
		session.delete(namespace + "goodsDelete", params);
	}
	
}
