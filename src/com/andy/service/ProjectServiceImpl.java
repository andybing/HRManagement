package com.andy.service;

import java.util.List;

import com.andy.dao.ProjectDao;
import com.andy.dao.ProjectDaoImpl;
import com.andy.entity.Project;

public class ProjectServiceImpl implements ProjectService{
	private ProjectDao projectDao = new ProjectDaoImpl();
	public List<Project> getAllProject(String[] args) {
		return projectDao.getAllProject(args);
	}
	public boolean deleteProject(String p_id) {
		return projectDao.deleteProject(p_id);
	}
	public boolean updateProject(String pId, Project project) {
		return projectDao.updateProject(pId, project);
	}
	public boolean insertProject(Project project) {
		return projectDao.insertProject(project);
	}
	public boolean setProjectPrp(String p_id, String prpids) {
		return projectDao.setProjectPrp(p_id, prpids);
	}
	public boolean delProjectPrp(String p_id, String prpids) {
		return projectDao.delProjectPrp(p_id, prpids);
	}
	public boolean setProjectDept(String pId, String deptId) {
		return projectDao.setProjectDept(pId, deptId);
	}
	public boolean delProjectDept(String pId, String deptId) {
		return projectDao.delProjectDept(pId, deptId);
	}
	public boolean setProjectPeo(String p_id, String[] params) {
		return projectDao.setProjectPeo(p_id, params);
	}
	
}
