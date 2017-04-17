package com.andy.service;

import java.util.List;

import com.andy.dao.DepartmentDao;
import com.andy.dao.DepartmentDaoImpl;
import com.andy.entity.Department;

public class DepartmentServiceImpl implements DepartmentService{
	private DepartmentDao departmentDao = new DepartmentDaoImpl();
	public String getDeptNodes(String id){
		if(id==null||id.length()==0){
			return "[]";
		}
		/*return "[{text:\"人力资源部\", id:\"0_1\"},{text:\"技术部\", id:\"0_2\"},{text:\"市场部\"," +
				" id:\"0_3\"},{text:\"客服部\", id:\"0_4\"},{text:\"行政部\", id:\"0_5\"}]";*/
		return departmentDao.getDeptNodes(id);
	}
	public boolean addDeptNodes(String dept_name, String dept_up) {
		return departmentDao.addDeptNodes(dept_name, dept_up);
	}
	public List<Department> getAllDept(String[] args) {
		return departmentDao.getAllDept(args);
	}
	public boolean delDeptNodes(String deptName) {
		return departmentDao.delDeptNodes(deptName);
	}
	public boolean updateDeptNodes(String dName, String dept_name, String up_name) {
		return departmentDao.updateDeptNodes(dName, dept_name, up_name);
	}
	public List<Department> getAllDownDept(String upName) {
		return departmentDao.getAllDownDept(upName);
	}
	public String getDeptIdByDeptName(String deptName) {
		return departmentDao.getDeptIdByDeptName(deptName);
	}
	public String getAllDeptNames() {
		return departmentDao.getAllDeptNames();
	}
	public String getAllDeptPeoNames(String deptName) {
		return departmentDao.getAllDeptPeoNames(deptName);
	}
	
}
