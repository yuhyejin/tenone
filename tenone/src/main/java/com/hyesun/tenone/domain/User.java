package com.hyesun.tenone.domain;

import java.util.Date;

public class User {
	
	private String user_id;
	private String user_pwd;
	private String user_name;
	private Date regDate;
	private String shop_name;
	private int adminCk;
	private String tel;
	
	
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_name=" + user_name + ", regDate="
				+ regDate + ", shop_name=" + shop_name + ", adminCk=" + adminCk + ", tel=" + tel + "]";
	}
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public int getAdminCk() {
		return adminCk;
	}
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
