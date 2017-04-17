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

public class DepartmentDelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		DepartmentService departmentService = new DepartmentServiceImpl();
		String dName = request.getParameter("dName");
		String upName = request.getParameter("upName");
		String[] args = {dName,upName};
		List<Department> depts = departmentService.getAllDept(args);
		List<Department> downDepts = departmentService.getAllDownDept(upName);
		if(depts.size()==0){
			out.print("该部门信息不存在");
		}else{
			if(departmentService.delDeptNodes(dName)){
				out.print("删除部门信息成功");
			}else{
				out.print("删除部门信息失败");
			}
		}
	}
}
