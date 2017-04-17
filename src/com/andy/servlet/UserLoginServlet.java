package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.UserService;
import com.andy.service.UserServiceImpl;

public class UserLoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		UserService userService = new UserServiceImpl();
		String userName = request.getParameter("name");
		String password = request.getParameter("password");
		String code = request.getParameter("code");
		if(userService.login(userName, password)){
			request.getSession().setAttribute("userName", userName);
			out.print("yes");
		}else{
			out.print("no");
		}
	}

}
