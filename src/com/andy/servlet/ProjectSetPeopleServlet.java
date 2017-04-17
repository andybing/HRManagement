package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;
import com.andy.service.UserService;
import com.andy.service.UserServiceImpl;

public class ProjectSetPeopleServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flagAdd = request.getParameter("flagAdd");
		UserService userService = new UserServiceImpl();
		ProjectService projectService = new ProjectServiceImpl();
		PrintWriter out = response.getWriter();
		if("false".equals(flagAdd)){
			String p_id = request.getParameter("p_id");
			request.getSession().setAttribute("p_id", p_id);
			request.getRequestDispatcher("../project/setPeople.jsp").forward(request, response);
		}else if("true".equals(flagAdd)){
			String p_id = (String)request.getSession().getAttribute("p_id");
			String xiangmu = request.getParameter("xiangmu");
			String yanfa = request.getParameter("yanfa");
			String caiwu = request.getParameter("caiwu");
			String fagui = request.getParameter("fagui");
			String shichang = request.getParameter("shichang");
			String yanzheng = request.getParameter("yanzheng");
			String shengchan = request.getParameter("shengchan");
			String yingyong = request.getParameter("yingyong");
			String caigou = request.getParameter("caigou");
			String fuwu = request.getParameter("fuwu");
			String zhiliang = request.getParameter("zhiliang");
			String other = request.getParameter("other");
			String[] params = {xiangmu,yanfa,caiwu,fagui,shichang,yanzheng,shengchan,yingyong,caigou,fuwu,zhiliang,other};
			if(projectService.setProjectPeo(p_id, params)){
				out.print("项目设置人员信息成功");
			}else{
				out.print("项目设置人员信息失败");
			}
		}
	}

}
