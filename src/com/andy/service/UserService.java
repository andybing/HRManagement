package com.andy.service;

public interface UserService {
	//通过应户名获取用户id
	public String getUserIdByName(String name);
	//通过用户名密码登陆
	public boolean login(String name,String password);
}
