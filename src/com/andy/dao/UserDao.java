package com.andy.dao;

public interface UserDao {
	//通过应户名获取用户id
	public String getUserIdByName(String name);
	//通过应户名获取用户密码
	public String getPasswordByName(String name);
}
