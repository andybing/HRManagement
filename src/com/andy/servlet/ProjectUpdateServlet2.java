package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Project;
import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;

public class ProjectUpdateServlet2 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectService projectService = new ProjectServiceImpl();
		String p_id = request.getParameter("p_id");
		String p_start = request.getParameter("p_start");
		String p_end = request.getParameter("p_end");
		String p_name = request.getParameter("p_name");
		projectService.updateProject(p_id, new Project(p_id,p_start,p_end,p_name));
		request.getRequestDispatcher("ProjectGetAllByPageServlet").forward(request, response);
	}
}
