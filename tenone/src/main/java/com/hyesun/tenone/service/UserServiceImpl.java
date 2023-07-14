package com.hyesun.tenone.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyesun.tenone.dao.UserDao;
import com.hyesun.tenone.domain.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;

	@Override
	public void register(User user) throws Exception {
		userDao.register(user);
	}
		

}
