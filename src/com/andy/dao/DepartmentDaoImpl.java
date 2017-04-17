package com.andy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.andy.entity.Department;
import com.andy.util.DBUtil;

public class DepartmentDaoImpl implements DepartmentDao{
	private Connection conn = null;
	private Statement st = null;
	private PreparedStatement pstmt = null;
	
	public String getDeptNodes(String id) {
		StringBuffer buffer = new StringBuffer("[");
		String nodes = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String sql = "select * from department where dept_id like '"+id+"a__' escape 'a'";
			//System.out.println(sql);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				buffer.append("{text:\""+rs.getString("dept_name")+"\",").append("id:\""+rs.getString("dept_id")+"\"},");
			}
			nodes = buffer.substring(0, buffer.length()-1)+"]";
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return nodes;
	}
	
	public boolean addDeptNodes(String dept_name, String dept_up) {
		int result = 0;
		String[] args = {dept_up,null};
		List<Department> dept = getAllDept(args);
		//System.out.println(dept.get(0).getDept_id());
		if(dept.size()==0){
			return false;
		}
		List<Department> downDepts = getAllDownDept(dept_up);
		String dept_id = dept.get(0).getDept_id();
		dept_id = dept_id+"_"+(downDepts.size()+1);
		int dept_level = dept.get(0).getDept_level()+1;
		//System.out.println(dept_level+" "+dept_name+" "+dept_up+" "+dept_id);
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("insert into department values(?,?,?,?)");
			pstmt.setInt(1, dept_level);
			pstmt.setString(2, dept_name);
			pstmt.setString(3, dept_up);
			pstmt.setString(4,dept_id);
			result = pstmt.executeUpdate();
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(pstmt!=null){
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return (result>=1);
	}

	public List<Department> getAllDept(String[] args) {
		List<Department> depts = new ArrayList<Department>();
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			StringBuffer sql = new StringBuffer("select * from department where 1=1");
			if(args!=null){
				for(int i = 0;i<args.length;i++){
					if(args[0]!=null && !"".equals(args[0])){
						sql.append(" and dept_name='"+args[0]+"'");
					}
					if(args[1]!=null && !"".equals(args[1])){
						sql.append(" and dept_up='"+args[1]+"'");
					}
				}
			}
			ResultSet rs = st.executeQuery(sql.toString());
			while(rs.next()){
				depts.add(new Department(rs.getInt("dept_level"),rs.getString("dept_name"),
						rs.getString("dept_up"),rs.getString("dept_id")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return depts;
	}

	public List<Department> getAllDownDept(String upName) {
		List<Department> depts = new ArrayList<Department>();
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String sql = "select * from department where dept_up = '"+upName+"'";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				depts.add(new Department(rs.getInt("dept_level"),rs.getString("dept_name"),
						rs.getString("dept_up"),rs.getString("dept_id")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return depts;
	}

	public boolean delDeptNodes(String deptName) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("delete from department where dept_name=?");
			pstmt.setString(1, deptName);
			result = pstmt.executeUpdate();
			pstmt = conn.prepareStatement("delete from department where dept_up = ?");
			pstmt.setString(1, deptName);
			result += pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result>=1);
	}

	public boolean updateDeptNodes(String dName,String dept_name,String up_name) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("update department set dept_name =? where dept_name=?");
			pstmt.setString(1, dept_name);
			pstmt.setString(2, dName);
			result = pstmt.executeUpdate();
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result>=1);
	}

	public String getDeptIdByDeptName(String deptName) {
		String dept_id = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("select dept_id from department where dept_name = ?");
			pstmt.setString(1, deptName);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				dept_id = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dept_id;
	}

	public String getAllDeptNames() {
		StringBuffer names = new StringBuffer();
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("select dept_name,dept_id from department " +
					"where dept_id like '0a__' escape 'a'");
			while(rs.next()){
				names.append(rs.getString(1)+"-");
			}
		//	System.out.println(names.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return names.toString();
	}

	public String getAllDeptPeoNames(String deptName) {
		StringBuffer names = new StringBuffer();
		try {
			conn = DBUtil.getConnection();
			String sql = "select username from p_user where departmentid = " +
					"(select dept_id from department where dept_name = ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,deptName);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				names.append(rs.getString(1)+"-");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return names.toString();
	}
}
