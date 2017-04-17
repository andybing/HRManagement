package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Project;
import com.andy.entity.Prp;
import com.andy.service.ProjectService;
import com.andy.service.ProjectServiceImpl;
import com.andy.service.PrpService;
import com.andy.service.PrpServiceImpl;

public class ProjectGetAllByPageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	static int pageNow = 1;
	static List<Project> projectsPage = new ArrayList<Project>();
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ProjectService projectService = new ProjectServiceImpl();
		String pageNowString = request.getParameter("pageNow");
		String p_id = request.getParameter("pro_id");
		String p_start = request.getParameter("pro_start");
		String p_end = request.getParameter("pro_end");
		String p_name = request.getParameter("pro_name");
		String[] args = {p_id,p_start,p_end,p_name};
		List<Project> projects = projectService.getAllProject(args);
		int pageCount = (projects.size()%2==0?projects.size()/2:projects.size()/2+1);
		if(pageNowString==null){
			projectsPage.clear();
			pageNow = 1;
			if(projects.size()<2){
				for(int i = 2*(pageNow-1);i<projects.size();i++){
					projectsPage.add(projects.get(i));
				}
			}else{
				for(int i = 2*(pageNow-1);i<2;i++){
					projectsPage.add(projects.get(i));
				}
			}
			
		}else{
			if("nextPage".equals(pageNowString)){
				if(pageNow<(projects.size()%2==0?projects.size()/2:projects.size()/2+1)){
					pageNow++;
					projectsPage.clear();
					if(pageNow == (projects.size()/2+1)){
						for(int i = 2*(pageNow-1);i<=projects.size()-1;i++){
							projectsPage.add(projects.get(i));
						}
					}else{
						for(int i = 2*(pageNow-1);i<pageNow*2;i++){
							projectsPage.add(projects.get(i));
						}
					}
				}
			}else if("frontPage".equals(pageNowString)){
				if(pageNow > 1){
					pageNow--;
					projectsPage.clear();
					for(int i = 2*(pageNow-1);i<pageNow*2;i++){
						projectsPage.add(projects.get(i));
					}
				}
			}else{
				pageNow = Integer.parseInt(pageNowString);
				projectsPage.clear();
				if(pageNow == (projects.size()/2+1)){
					for(int i = 2*(pageNow-1);i<=projects.size()-1;i++){
						projectsPage.add(projects.get(i));
					}
				}else{
					for(int i = 2*(pageNow-1);i<pageNow*2;i++){
						projectsPage.add(projects.get(i));
					}
				}
			}
		}
		request.setAttribute("projects", projectsPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageNow", pageNow);
		request.getRequestDispatcher("../project/project_main.jsp").forward(request, response);
	}

}
