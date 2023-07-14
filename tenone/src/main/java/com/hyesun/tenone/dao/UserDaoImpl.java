package com.hyesun.tenone.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hyesun.tenone.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SqlSession session;
	private static String namespace = "com.hyesun.tenone.dao.UserMapper.";

	@Override
	public void register(User user) throws Exception {
		session.insert(namespace+"insert", user);
		
	}

}
