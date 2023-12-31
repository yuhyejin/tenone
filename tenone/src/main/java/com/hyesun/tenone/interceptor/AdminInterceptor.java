package com.hyesun.tenone.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.hyesun.tenone.domain.User;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj) throws Exception {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		
		if(user == null) {
			res.sendRedirect("/user/login");
			return false;
		}
		
		if(user == null || user.getAdminCk() != 1) {
			res.sendRedirect("/");
			return false;
		}
		return true;
	}

}
