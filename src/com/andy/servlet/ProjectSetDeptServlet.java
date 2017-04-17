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

public class ProjectSetDeptServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentService departmentService = new DepartmentServiceImpl();
		ProjectService projectService = new ProjectServiceImpl();
		PrintWriter out = response.getWriter();
		String flag = request.getParameter("flagAdd");
		if("false".equals(flag)){
			String p_id = request.getParameter("p_id");
			request.setAttribute("p_id", p_id);
			request.getRequestDispatcher("../project/setDepartment.jsp").forward(request, response);
		}else if("true".equals(flag)){
			String p_id = request.getParameter("p_id");
			String dept_name = request.getParameter("dept_name");
			String dept_id = departmentService.getDeptIdByDeptName(dept_name);
			if(projectService.setProjectDept(p_id, dept_id)){
				out.print("项目设置部门信息成功");
			}else{
				out.print("项目设置部门信息失败");
			}
		}
	}

}
