package com.andy.dao;

import java.util.List;

import com.andy.entity.Prp;

public interface PrpDao {
	//得到所有Prp
	public List<Prp> getAllPrp(String[] args);
	//添加prp
	public boolean insertPrp(Prp prp);
	//更新PRP
	public boolean updatePrp(String prpShort,String prpName,Prp prp);
	//删除PRP
	public boolean DeletePrp(Prp prp);
	//分页查询
	public List<Prp> getAllPrpByPage(int pageNow);
}
