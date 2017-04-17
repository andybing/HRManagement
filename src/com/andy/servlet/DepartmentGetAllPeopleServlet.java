package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.DepartmentService;
import com.andy.service.DepartmentServiceImpl;

public class DepartmentGetAllPeopleServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentService departmentService = new DepartmentServiceImpl();
		PrintWriter out = response.getWriter();
		String dept_name = request.getParameter("dept_name");
		String names = departmentService.getAllDeptPeoNames(dept_name);
		out.print(names);
	}

}
