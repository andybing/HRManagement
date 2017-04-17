package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Prp;
import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;
import com.andy.service.PrpService;
import com.andy.service.PrpServiceImpl;

public class ProjectSetPrpServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ProjectService projectService = new ProjectServiceImpl();
		PrpService prpService = new PrpServiceImpl();
		if("false".equals(request.getParameter("flagAdd"))){
			String p_id = request.getParameter("p_id");
			List<Prp> prps = prpService.getAllPrp(null);
			request.setAttribute("prps", prps);
			request.setAttribute("p_id", p_id);
			request.getRequestDispatcher("../project/setprp.jsp").forward(request,response);
		}
		else if("true".equals(request.getParameter("flagAdd"))){
			String p_id = request.getParameter("p_id");
			String prpids = request.getParameter("prpids");
			if(projectService.setProjectPrp(p_id, prpids)){
				out.print("PRP阶段设置成功");
			}else{
				out.print("PRP阶段设置失败");
			}
			
		}

	}

}
