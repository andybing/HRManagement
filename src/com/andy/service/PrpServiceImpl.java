package com.andy.service;

import java.util.List;

import com.andy.dao.PrpDao;
import com.andy.dao.PrpDaoImpl;
import com.andy.entity.Prp;

public class PrpServiceImpl implements PrpService{
	private PrpDao prpDao = new PrpDaoImpl();
	public List<Prp> getAllPrp(String[] args) {
		return prpDao.getAllPrp(args);
	}
	public boolean insertPrp(Prp prp) {
		return prpDao.insertPrp(prp);
	}
	public boolean updatePrp(String prpShort, String prpName, Prp prp) {
		return prpDao.updatePrp(prpShort, prpName, prp);
	}
	public boolean DeletePrp(Prp prp) {
		return prpDao.DeletePrp(prp);
	}
	public List<Prp> getAllPrpByPage(int pageNow) {
		return prpDao.getAllPrpByPage(pageNow);
	}

}
