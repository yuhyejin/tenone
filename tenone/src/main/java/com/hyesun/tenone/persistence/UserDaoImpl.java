package com.hyesun.tenone.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyesun.tenone.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace = "com.hyesun.tenone.dao.UserMapper.";

	// 회원가
	@Override
	public void register(User user) throws Exception {
		session.insert(namespace+"register", user);
		
	}

	// 로그인 
	@Override
	public User login(User user) throws Exception {
		return session.selectOne(namespace+"login", user);
	}

}
