package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;

public class ProjectDelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProjectService projectService = new ProjectServiceImpl();
		String p_id = request.getParameter("p_id");
		projectService.deleteProject(p_id);
		request.getRequestDispatcher("ProjectGetAllByPageServlet").forward(request, response);
	}
}
