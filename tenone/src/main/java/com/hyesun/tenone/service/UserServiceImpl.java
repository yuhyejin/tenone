package com.hyesun.tenone.service;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyesun.tenone.domain.User;
import com.hyesun.tenone.persistence.UserDao;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;

	// 회원가입 
	@Override
	public void register(User user) throws Exception {
		userDao.register(user);
	}

	// 로그인 
	@Override
	public User login(User user) throws Exception {
		return userDao.login(user);
	}

	// 로그아웃 
	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();		
	}
		

}
