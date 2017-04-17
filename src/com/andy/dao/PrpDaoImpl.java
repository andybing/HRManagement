package com.andy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import com.andy.entity.Prp;
import com.andy.util.DBUtil;

public class PrpDaoImpl implements PrpDao{
	private Connection conn = null;
	private Statement st = null;
	private PreparedStatement pstmt = null;
	public List<Prp> getAllPrp(String[] args) {
		List<Prp> prps = new LinkedList<Prp>();
		List<Prp> prpsPage = new ArrayList<Prp>();
		StringBuffer sql = new StringBuffer("select * from prp where 1=1");
		if(args!=null){
			if(args[0]!=null && !"".equals(args[0])){
				sql.append(" and prpshort='"+args[0]+"'");
			}
			if(args[1]!=null && !"".equals(args[1])){
				sql.append(" and prpname='"+args[1]+"'");
			}
		}
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql.toString());
			while(rs.next()){
				prps.add(new Prp(rs.getString("prpshort"),rs.getString("prpname"),rs.getString("prpid")));
			}
//			for(int i = 0;i<5;i++){
//				prpsPage.add(prps.get(i));
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return prps;
	}
	public boolean insertPrp(Prp prp) {
		int result = 0 ;
		try {
			conn = DBUtil.getConnection();
			if(prp.getOther()==null || "".equals(prp.getOther())){
				String sql = "insert into prp(prpid,prpshort,prpname) values(prp_seq.nextval,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, prp.getPrpShort());
				pstmt.setString(2, prp.getPrpName());
				result = pstmt.executeUpdate();
			}else{
				String sql = "insert into prp(prpid,prpshort,prpname,other) values(prp_seq.nextval,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, prp.getPrpShort());
				pstmt.setString(2, prp.getPrpName());
				pstmt.setString(3,prp.getOther());
				result = pstmt.executeUpdate();
			}
			DBUtil.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBUtil.close();
		}
		return (result>=1);
	}
	public boolean updatePrp(String prpShort,String prpName,Prp prp) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			String sql = "update prp set prpshort=?,prpname=? where prpshort=? and prpname=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, prp.getPrpShort());
			pstmt.setString(2, prp.getPrpName());
			pstmt.setString(3, prpShort);
			pstmt.setString(4, prpName);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
	public boolean DeletePrp(Prp prp) {
		int result = 0;
		try {
			conn = DBUtil.getConnection();
			String sql = "delete from prp where prpshort=? and prpName=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, prp.getPrpShort());
			pstmt.setString(2, prp.getPrpName());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (result>=1);
	}
	public List<Prp> getAllPrpByPage(int pageNow) {
		List<Prp> prps = getAllPrp(null);
		int numCount = prps.size();
		int pageCount = numCount/pageNow;
		int pageSize = 5;
		List<Prp> prpsPage = new ArrayList<Prp>();
		for(int i = 0;i<pageSize;i++){
			prpsPage.add(prps.get(i));
		}
		return prpsPage;
	}
}
