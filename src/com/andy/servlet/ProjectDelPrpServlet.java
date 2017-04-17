package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;

public class ProjectDelPrpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ProjectService projectService = new ProjectServiceImpl();
		String p_id = request.getParameter("p_id");
		String prpids = request.getParameter("prpids");
		if(projectService.delProjectPrp(p_id, prpids)){
			out.print("删除Prp阶段成功");
		}else{
			out.print("删除Prp阶段失败,Prp阶段未设定");
		}
	}
}
