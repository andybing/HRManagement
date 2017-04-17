package com.andy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andy.entity.Prp;
import com.andy.service.PrpService;
import com.andy.service.PrpServiceImpl;

public class PrpGetAllByPageServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	static int pageNow = 1;
	static List<Prp> prpsPage = new ArrayList<Prp>();
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		PrpService prpService = new PrpServiceImpl();
		
		String prpShort = request.getParameter("prpShort");
		String prpName = request.getParameter("prpName");
		String[] args = {prpShort,prpName};
		String pageNowString = request.getParameter("pageNow");
		List<Prp> prps = prpService.getAllPrp(args);
		int pageCount = (prps.size()%5==0?prps.size()/5:prps.size()/5+1);
		if(pageNowString==null){
			prpsPage.clear();
			pageNow = 1;
			if(prps.size()<5){
				for(int i = 5*(pageNow-1);i<prps.size();i++){
					prpsPage.add(prps.get(i));
				}
			}else{
				for(int i = 5*(pageNow-1);i<5;i++){
					prpsPage.add(prps.get(i));
				}
			}
			
		}else{
			if("nextPage".equals(pageNowString)){
				if(pageNow<(prps.size()%5==0?prps.size()/5:prps.size()/5+1)){
					pageNow++;
					prpsPage.clear();
					if(pageNow == (prps.size()/5+1)){
						for(int i = 5*(pageNow-1);i<=prps.size()-1;i++){
							prpsPage.add(prps.get(i));
						}
					}else{
						for(int i = 5*(pageNow-1);i<pageNow*5;i++){
							prpsPage.add(prps.get(i));
						}
					}
				}
			}else if("frontPage".equals(pageNowString)){
				if(pageNow > 1){
					pageNow--;
					prpsPage.clear();
					for(int i = 5*(pageNow-1);i<pageNow*5;i++){
						prpsPage.add(prps.get(i));
					}
				}
			}else{
				pageNow = Integer.parseInt(pageNowString);
				System.out.println(pageNow);
				prpsPage.clear();
				if(pageNow == (prps.size()/5+1)){
					for(int i = 5*(pageNow-1);i<=prps.size()-1;i++){
						prpsPage.add(prps.get(i));
					}
				}else{
					for(int i = 5*(pageNow-1);i<pageNow*5;i++){
						prpsPage.add(prps.get(i));
						//System.out.println(prpsPage.size());
					}
				}
				out.print("fgg");
			}
		}
		request.setAttribute("prps", prpsPage);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("pageNow", pageNow);
		request.getRequestDispatcher("../prp/prp_main.jsp").forward(request, response);
	}

}
