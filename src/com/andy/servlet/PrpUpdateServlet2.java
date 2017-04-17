package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.andy.entity.Prp;
import com.andy.service.PrpService;
import com.andy.service.PrpServiceImpl;

public class PrpUpdateServlet2 extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String prpShort_1 = (String)session.getAttribute("prpShort");
		String prpName_1 = (String)session.getAttribute("prpName");
		String prpShort = request.getParameter("prpShort");
		String prpName = request.getParameter("prpName");
		PrpService prpService = new PrpServiceImpl();
		if(prpService.updatePrp(prpShort_1, prpName_1, new Prp(prpShort,prpName))){
			out.print("数据修改成功");
		}else{
			out.print("数据修改失败");
		}
		
	}

}
