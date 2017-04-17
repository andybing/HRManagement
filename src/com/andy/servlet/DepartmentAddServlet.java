package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Department;
import com.andy.service.DepartmentService;
import com.andy.service.DepartmentServiceImpl;

public class DepartmentAddServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DepartmentService departmentService = new DepartmentServiceImpl();
		PrintWriter out = response.getWriter();
		String dName = request.getParameter("dName");
		String upName = request.getParameter("upName");
		//System.out.println(dName+" "+upName);
		String[] args = {dName,null};
		List<Department> depts = departmentService.getAllDept(args);
		if(depts.size()>=1){
			out.print("该部门信息已经存在");
		}else{
			if(departmentService.addDeptNodes(dName,upName)){
				out.print("添加部门成功");
			}else{
				out.print("添加部门失败");
			}
		}
	}
}
