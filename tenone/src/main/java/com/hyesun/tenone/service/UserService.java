package com.hyesun.tenone.service;

import com.hyesun.tenone.domain.User;

public interface UserService {
	
	// 회원가입 
	public void register(User user) throws Exception;

}
