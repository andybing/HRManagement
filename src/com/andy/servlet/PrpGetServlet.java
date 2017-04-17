package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Prp;
import com.andy.service.PrpService;
import com.andy.service.PrpServiceImpl;

public class PrpGetServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrpService prpService = new PrpServiceImpl();
		String prpShort = request.getParameter("prpShort");
		String prpName = request.getParameter("prpName");
		String[] args = {prpShort,prpName};
		List<Prp> prps = prpService.getAllPrp(args);
		request.setAttribute("prps", prps);
		request.getRequestDispatcher("../prp/prp_main.jsp").forward(request, response);
	}
}
