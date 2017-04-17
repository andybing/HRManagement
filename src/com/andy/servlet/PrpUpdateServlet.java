package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PrpUpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String prpShort = request.getParameter("prpShort");
		String prpName = request.getParameter("prpName");
		HttpSession session = request.getSession();
		session.setAttribute("prpShort",prpShort);
		session.setAttribute("prpName",prpName);
		request.getRequestDispatcher("../prp/prp_update.jsp").forward(request, response);
	}

}
