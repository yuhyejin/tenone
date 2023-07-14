package com.hyesun.tenone.dao;

import com.hyesun.tenone.domain.User;

public interface UserDao {
	
	// 회원가입
	public void register(User user) throws Exception;
	

}
