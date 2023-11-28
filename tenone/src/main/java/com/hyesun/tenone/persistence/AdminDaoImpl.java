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
	@Override
	public void goodsDelete(Integer goodsId, String sellerId) throws Exception {
		Map<String, Object> params = new HashMap<>();
		params.put("goodsId", goodsId);
		params.put("sellerId", sellerId);
		
		session.delete(namespace + "goodsDelete", params);
	}
	
	// 게시물 총 갯수
	@Override
	public int goodsCount(String sellerId) throws Exception {
		return session.selectOne(namespace + "goodsCount", sellerId);
	}
	
	// 게시물 목록 + 페이징
	@SuppressWarnings("unchecked")
	@Override
	public List<Goods> getListPaging(String sellerId, int displayPost, int postNum) throws Exception {
		@SuppressWarnings("rawtypes")
		HashMap data = new HashMap();
		data.put("sellerId", sellerId);
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return session.selectList(namespace + "getListPaging", data);
	}
	
}
