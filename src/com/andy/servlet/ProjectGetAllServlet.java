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

public class ProjectGetAllServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectService projectService = new ProjectServiceImpl();
		String p_id = request.getParameter("pro_id");
		String p_start = request.getParameter("pro_start");
		String p_end = request.getParameter("pro_end");
		String p_name = request.getParameter("pro_name");
		String[] args = {p_id,p_start,p_end,p_name};
		List<Project> projects = projectService.getAllProject(args);
		request.setAttribute("projects", projects);
		request.getRequestDispatcher("../project/project_main.jsp").forward(request, response);
	}
}
