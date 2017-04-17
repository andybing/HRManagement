package com.andy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.andy.util.DBUtil;

public class UserDaoImpl implements UserDao{
	private Connection conn = null;
	private Statement st = null;
	private PreparedStatement pstmt = null;
	public String getUserIdByName(String name) {
		String id = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("select id from p_user where username = ?");
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				id = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
	public String getPasswordByName(String name) {
		String password = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("select password from p_user where username = ?");
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				password = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return password;
	}

}
