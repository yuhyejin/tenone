package com.hyesun.tenone.persistence;

import com.hyesun.tenone.domain.User;

public interface UserDao {
	
	// 회원가입
	public void register(User user) throws Exception;
	
	// 로그인 
	public User login(User user) throws Exception;
	

}
