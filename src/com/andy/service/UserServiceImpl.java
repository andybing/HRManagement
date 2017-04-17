package com.andy.service;

import com.andy.dao.UserDao;
import com.andy.dao.UserDaoImpl;

public class UserServiceImpl implements UserService{
	private UserDao userDao = new UserDaoImpl();
	public String getUserIdByName(String name) {
		return userDao.getUserIdByName(name);
	}
	public boolean login(String name, String password) {
		String pass = userDao.getPasswordByName(name);
		if(password!=null && !"".equals(password)){
			if(password.equals(pass)){
				return true;
			}
		}
		return false;
	}

}
