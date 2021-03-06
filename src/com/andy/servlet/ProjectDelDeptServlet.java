package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.DepartmentService;
import com.andy.service.DepartmentServiceImpl;
import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;

public class ProjectDelDeptServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentService departmentService = new DepartmentServiceImpl();
		ProjectService projectService = new ProjectServiceImpl();
		PrintWriter out = response.getWriter();
		String dept_name = request.getParameter("dept_name");
		String p_id = request.getParameter("p_id");
		String dept_id = departmentService.getDeptIdByDeptName(dept_name);
		if(projectService.delProjectDept(p_id, dept_id)){
			out.print("项目部门信息删除成功");
		}else{
			out.print("项目部门信息删除失败");
		}
	}
}
