package com.andy.service;

import java.util.List;

import com.andy.entity.Project;

public interface ProjectService {
	//得到所有Project
	public List<Project> getAllProject(String[] args);
	//删除PRP
	public boolean deleteProject(String p_id);
	//更新Project
	public boolean updateProject(String p_id,Project project);
	//添加Project
	public boolean insertProject(Project project);
	//给Project设置Prp阶段
	public boolean setProjectPrp(String p_id,String prpids);
	// 给Project删除Prp阶段
	public boolean delProjectPrp(String p_id,String prpids);
	//给Project配置部门信息
	public boolean setProjectDept(String p_id,String dept_id);
	//给Project删除部门信息
	public boolean delProjectDept(String p_id,String dept_id);
	//给Project配置人员
	public boolean setProjectPeo(String p_id,String[] param);
}
