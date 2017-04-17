package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Project;
import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;

public class ProjectUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectService projectService = new ProjectServiceImpl();
		String p_id = request.getParameter("p_id");
		String[] args = {p_id,null,null,null};
		List<Project> projects = (List<Project>) projectService.getAllProject(args);
		request.setAttribute("project", projects.get(0));
		request.getRequestDispatcher("../project/project_update.jsp").forward(request, response);
	}

}
