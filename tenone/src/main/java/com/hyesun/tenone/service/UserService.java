package com.hyesun.tenone.service;

import javax.servlet.http.HttpSession;

import com.hyesun.tenone.domain.User;

public interface UserService {
	
	// 회원가입 
	public void register(User user) throws Exception;
	
	// 로그인 
	public User login(User user) throws Exception;
	
	// 로그아웃
	public void logout(HttpSession session) throws Exception;

}
