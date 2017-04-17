package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.dao.PrpDao;
import com.andy.dao.PrpDaoImpl;
import com.andy.entity.Prp;

public class PrpDelServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String prpShort = request.getParameter("prpShort2");
		String prpName = request.getParameter("prpName2");
		System.out.println(prpShort+prpName);
		PrpDao prpDao = new PrpDaoImpl();
		prpDao.DeletePrp(new Prp(prpShort,prpName));
		request.getRequestDispatcher("PrpGetAllByPageServlet").forward(request, response);
	}

}
