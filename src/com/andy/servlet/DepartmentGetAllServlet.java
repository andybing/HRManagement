package com.andy.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.DepartmentService;
import com.andy.service.DepartmentServiceImpl;

public class DepartmentGetAllServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		if(id!=null && id.length()>0 ){
			DepartmentService service = new DepartmentServiceImpl();
			try {
				response.setCharacterEncoding("utf-8");
				response.getWriter().write(service.getDeptNodes(id));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
