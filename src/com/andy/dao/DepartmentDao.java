package com.andy.dao;

import java.util.List;

import com.andy.entity.Department;

public interface DepartmentDao {
	//level当前级别，up当前节点名称。要查询下一级菜单
	public String getDeptNodes(String id);
	//添加部门 ，在部门菜单中动态显示
	public boolean addDeptNodes(String dept_name,String dept_up);
	//得到所有的部门信息
	public List<Department> getAllDept(String[] args);
	//得到所有下属部门
	public List<Department> getAllDownDept(String upName);
	//删除选择的部门
	public boolean delDeptNodes(String deptName);
	//修改制定部门信息
	public boolean updateDeptNodes(String dName,String dept_name,String up_name);
	//根据部门名称得到部门编号
	public String getDeptIdByDeptName(String dept_name);
	//得到所有部门名称0_x
	public String getAllDeptNames();
	//得到部门所有员工姓名
	public String getAllDeptPeoNames(String deptName);
}
