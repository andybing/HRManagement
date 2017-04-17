package com.andy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.andy.entity.Project;
import com.andy.util.DBUtil;

public class ProjectDaoImpl implements ProjectDao{
	private Connection conn = null;
	private Statement st = null;
	private PreparedStatement pstmt = null;
	public List<Project> getAllProject(String[] args) {
		List<Project> projects = new ArrayList<Project>();
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			StringBuffer sql = new StringBuffer("select * from project where 1=1");
			if(args != null){
				for(int i = 0;i<args.length;i++){
					if(args[0]!=null && !"".equals(args[0])){
						sql.append(" and p_id='"+args[0]+"'");
					}
					if(args[1]!=null && !"".equals(args[1])){
						sql.append(" and p_start='"+args[1]+"'");
					}
					if(args[2]!=null && !"".equals(args[2])){
						sql.append(" and p_end='"+args[2]+"'");
					}
					if(args[3]!=null && !"".equals(args[3])){
						sql.append(" and p_name='"+args[3]+"'");
					}
				}
			}
			//System.out.println(sql.toString());
			ResultSet rs = st.executeQuery(sql.toString());
			while(rs.next()){
				projects.add(new Project(rs.getString("p_id"),rs.getString("p_start"),rs.getString("p_end"),rs.getString("p_name")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return projects;
	}
	public boolean deleteProject(String p_id) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("delete from project where p_id=?");
			pstmt.setString(1, p_id);
			result = pstmt.executeUpdate();
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result >= 1);
	}
	public boolean updateProject(String p_id, Project project) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("update project set p_start=?,p_end=?,p_name=? where p_id=?");
			pstmt.setString(1, project.getP_start());
			pstmt.setString(2, project.getP_end());
			pstmt.setString(3, project.getP_name());
			pstmt.setString(4, p_id);
			result = pstmt.executeUpdate();
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result >= 1);
	}
	public boolean insertProject(Project project) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("insert into project values(?,?,?,?)");
			pstmt.setString(1, project.getP_id());
			pstmt.setString(2, project.getP_start());
			pstmt.setString(3,project.getP_end());
			pstmt.setString(4, project.getP_name());
			result = pstmt.executeUpdate();
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result >= 1);
	}
	public boolean setProjectPrp(String p_id,String prpids){
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			String[] prp_ids = prpids.trim().split(" ");
			String sql = "insert into pro_prp values(?,?)";
			pstmt = conn.prepareStatement(sql);
			for(int i = 0;i<prp_ids.length;i++){
				//System.out.println(prp_ids[i]);
				pstmt.setString(1, p_id);
				pstmt.setString(2, prp_ids[i]);
				result = pstmt.executeUpdate();
			}
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result >= 1);
	}
	public boolean delProjectPrp(String p_id, String prpids) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			String[] prp_ids = prpids.trim().split(" ");
			String sql = "delete from pro_prp where pro_id=? and prp_id=?";
			pstmt = conn.prepareStatement(sql);
			for(int i = 0;i<prp_ids.length;i++){
				pstmt.setString(1, p_id);
				pstmt.setString(2,prp_ids[i]);
				result = pstmt.executeUpdate();
			}
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
	public boolean setProjectDept(String pId, String deptId) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("insert into pro_dept values(?,?)");
			pstmt.setString(1, pId);
			pstmt.setString(2,deptId);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
	public boolean delProjectDept(String pId, String deptId) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("delete from pro_dept where pro_id=? and dept_id=?");
			pstmt.setString(1, pId);
			pstmt.setString(2,deptId);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
	public boolean setProjectPeo(String p_id, String[] params) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("insert into pro_peo values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, p_id);
			pstmt.setString(2,params[0]);
			pstmt.setString(3,params[1]);
			pstmt.setString(4,params[2]);
			pstmt.setString(5,params[3]);
			pstmt.setString(6,params[4]);
			pstmt.setString(7,params[5]);
			pstmt.setString(8,params[6]);
			pstmt.setString(9,params[7]);
			pstmt.setString(10,params[8]);
			pstmt.setString(11,params[9]);
			pstmt.setString(12,params[10]);
			pstmt.setString(13,params[11]);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
}
