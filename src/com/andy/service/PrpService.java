package com.andy.service;

import java.util.List;

import com.andy.entity.Prp;

public interface PrpService {
	//得到所有prp
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
