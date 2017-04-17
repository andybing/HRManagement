package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.DepartmentService;
import com.andy.service.DepartmentServiceImpl;

public class DepartmentUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		DepartmentService departmentService = new DepartmentServiceImpl();
		String dName = request.getParameter("dName");
		String dept_name = request.getParameter("dept_name");
		String up_name = request.getParameter("up_name");
		if(departmentService.updateDeptNodes(dName, dept_name, up_name)){
			out.print("部门信息修改成功");
		}else{
			out.print("部门信息修改失败");
		}
	}
}
