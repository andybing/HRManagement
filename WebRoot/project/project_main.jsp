<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="/PowerProject/css/calendarAll.css"/>
  	<script type="text/javascript" src="/PowerProject/js/calendarAll.js"></script>
  	<script type="text/javascript" src="js/project.js"></script>
    <style>
		.project_query{width:90%;height:130px;border:1px solid blue;margin:30px auto;}
		.project_query .p_header{background:#d0ffff;width:100%;height:30px;}
		.project_query .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.project_query .p_form{width:100%;height:96px;background:#eaeaea;}
		.right{float:right;}
		.project_data{width:90%;height:400px;border:1px solid blue;border-bottom:0px;margin:20px auto;margin-bottom:0px;background:#eaeaea;}
		table tr{height:30px;}
		.project_data .d_title{font-size:16px;font-weight:bold;}
		.project_data a{text-decoration:none;}
		.page{width:90%;height:30px;margin:0px auto;border:1px solid blue;border-top:2px solid #fff;
			background-color:#d0ffff;text-align:center;line-height:30px;font-size:14px;font-family:"微软雅黑";}
		.page a{text-decoration:none;}
	</style>
  </head>
  
  <body onload="showPage()">
    <div class="project_query">
    	<div class="p_header"><span class="p_title">项目设定-查询条件</span></div>
    	<div class="p_form">
    	<form action="servlet/ProjectGetAllByPageServlet" method="post">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center">
    				<td>项目编号</td>
    				<td><input type="text" name="pro_id" id="projectShort" style="width:100%"/></td>
    				<td width="200">项目名称</td>
    				<td><input type="text" name="pro_name" id="projectName" style="width:100%"/></td>
    			</tr>
    			<tr align="center">
    				<td>项目开始时间</td>
    				<td><input type="text" name="pro_start" id="project_start" style="width:90%"/><input type="button" value="☆" onclick="return showCalendar('project_start', 'y-mm-dd');"></td>
    				<td>项目结束时间</td>
    				<td><input type="text" name="pro_end" id="project_end" style="width:90%"/><input type="button" value="☆" onclick="return showCalendar('project_end', 'y-mm-dd');"></td>
    			</tr>
    			<tr align="right">
    				<td colspan="4">
    					<input type="submit" value="查询" onclick="return queryCheck()"/> 
    					<input type="button" value="添加" onclick="toProjectAdd()"/> 
    					<input type="button" value="重置" onclick="reset()"/>
    				</td>
    			</tr>
    		</table>
    	</form>
    	</div>
	</div>
    <div class="project_data">
	    <table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
	    	<tr bgcolor="#d0ffff" align="center" class="d_title">
	    		<td>项目编号</td>
	    		<td>开始时间</td>
	    		<td>结束时间</td>
	    		<td>项目名称</td>
	    		<td colspan="5">操作</td>
	    	</tr>
	    	<%--<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="setDept()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>
	    	<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="setDept()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>
	    	<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="setDept()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>
	    	<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="setDept()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>
	    	<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="setDept()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>
	    	<tr align="center">
	    		<td>JYXM</td>
	    		<td>2015-9-18</td>
	    		<td>2015-10-18</td>
	    		<td>结业项目</td>
	    		<td><a href="javascript:void(0)" onclick="openNew()">配置部门</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPRP()">配置PRP阶段</a></td>
	    		<td><a href="javascript:void(0)" onclick="setPeople()">配置人员</a></td>
	    		<td><a href="javascript:void(0)" onclick="toProjectUpdate()" target="_blank">修改</a></td>
	    		<td><a href="javascript:alert('确定删除')">删除</a></td>
	    	</tr>--%>
	    	<c:forEach items="${requestScope.projects}" var="item">
	    		<tr align="center">
	    		<td>${item.p_id }</td>
	    		<td>${item.p_start }</td>
	    		<td>${item.p_end }</td>
	    		<td>${item.p_name }</td>
	    		<td>
	    			<form action="servlet/ProjectSetDeptServlet" style="margin:2px;" method="post">
	    				<input type="hidden" value="false" name="flagAdd"/>
	    				<input type="hidden" value="${item.p_id }" name="p_id"/>
	    				<input type="submit" value="配置部门"/>
	    			</form>
	    		</td>
	    		<td>
	    			<form action="servlet/ProjectSetPrpServlet" style="margin:2px;" method="post">
	    				<input type="hidden" value="false" name="flagAdd"/>
	    				<input type="hidden" value="${item.p_id }" name="p_id"/>
	    				<input type="submit" value="配置PRP阶段"/>
	    			</form>
	    		</td>
	    		<td>
	    			<form action="servlet/ProjectSetPeopleServlet" style="margin:2px;" method="post">
	    				<input type="hidden" value="${item.p_id }" name="p_id"/>
	    				<input type="hidden" name="flagAdd" value="false" />
	    				<input type="submit" value="配置人员"/>
	    			</form>
	    		</td>
	    		<td>
	    			<form action="servlet/ProjectUpdateServlet" method="post" style="margin:2px;">
	    				<input type="hidden" value="${item.p_id }" name="p_id"/>
	    				<input type="submit" value="修改"/>
	    			</form>
	    		</td>
	    		<td>
	    			<form action="servlet/ProjectDelServlet" method="post" style="margin:2px;">
	    				<input type="hidden" value="${item.p_id }" name="p_id"/>
	    				<input type="submit" value="删除" onclick=" return confirm('确认要删除嘛?')"/>
	    			</form>
	    		</td>
	    	</tr>
	    	</c:forEach>
	    </table>
    </div>
    <div class="page">
    	<a href="servlet/ProjectGetAllByPageServlet?pageNow=frontPage">【上一页】</a>一共有 <font style="font-size:16px;font-weight:bold;">${pageCount }</font> 页,当前第 <font style="font-size:16px;font-weight:bold;">${pageNow }</font> 页<a href="servlet/ProjectGetAllByPageServlet?pageNow=nextPage">【下一页】</a> 跳转到第
    		<input type="hidden" value="${pageNow }" id="pn"/>
       		<select onchange="changePage()" id="pages">
    		<%
    			for(int j = 0;j<(Integer)request.getAttribute("pageCount");j++){
    		%>
    			<option value="<%=j+1 %>"><%=j+1 %></option>
    		<%} %>
    			
    		</select>
    		页
    </div>
 	<script>
 		function setDept(){
			document.location.href="project/setDepartment.jsp";
 		}
 		function openNew(){
			window.open();
 		}
 		function setPeople(){
 			document.location.href="project/setPeople.jsp";
 		}
 		function setPRP(){
 			document.location.href="project/setprp.jsp";
 		}
 		function queryCheck(){
			var start = document.getElementById("project_start").value;
			var end = document.getElementById("project_end").value;
			if(start.localeCompare(end)==1){
				alert("结束时间不正确");
				return false;
			}
 		}
 		function changePage(){
			var pages = document.getElementById("pages").options;
			for(var i = 0 ;i<pages.length;i++){
				if(pages[i].selected){
					document.location.href="servlet/ProjectGetAllByPageServlet?pageNow="+pages[i].value;
				}
			}
 		}
 		function showPage(){
        	var pn = document.getElementById("pn").value;
        	var pages = document.getElementById("pages");
        	for(var i = 0;i<pages.length;i++){
				if(pages[i].value==pn){
					pages[i].selected="selected";
				}
			}
    	}
 	</script>
  </body>
</html>
