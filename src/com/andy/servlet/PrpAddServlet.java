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

public class PrpAddServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String prpShort = request.getParameter("prpShort");
		String prpName = request.getParameter("prpName");
		String other = request.getParameter("other");
		PrpService prpService = new PrpServiceImpl();
		String[] args = {prpShort,prpName};
		List<Prp> prps = prpService.getAllPrp(args);
		if(prps.size()>=1){
			out.print("该PRP阶段已经存在");
		}else{
			if(prpService.insertPrp(new Prp(prpShort,prpName,other))){
				out.print("添加PRP阶段成功!");
			}else{
				out.print("添加PRP阶段失败!");
			}
		}
	}
}
