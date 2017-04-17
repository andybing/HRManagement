<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>工程修改页面</title>
    <link rel="stylesheet" type="text/css" href="/PowerProject/css/calendarAll.css"/>
  	<script type="text/javascript" src="/PowerProject/js/calendarAll.js"></script>
  	<script type="text/javascript" src="js/project.js"></script>
    <style>
		.project_update{width:90%;height:110px;border:1px solid blue;margin:30px auto;}
		.project_update .p_header{background:#d0ffff;width:100%;height:30px;}
		.project_update .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.project_update .p_form{width:100%;height:80px;background:#eaeaea;}
	</style>
  </head>
  
  <body>
    <div class="project_update">
    	<div class="p_header"><span class="p_title">项目设定-修改信息(红色必填)</span></div>
    	<div class="p_form">
    	<form action="servlet/ProjectUpdateServlet2" method="post">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center">
    				<td width="30%"><font color="red">项目编号</font></td>
    				<td><input type="text" name="p_id" id="projectShort" style="width:100%" value="${project.p_id }" readonly="readonly"/></td>
    				<td width="200"><font color="red">项目名称</font></td>
    				<td><input type="text" name="p_name" id="projectName" style="width:100%" value="${project.p_name }"/></td>
    			</tr>
    			<tr align="center">
    				<td><font color="red">项目开始时间</font></td>
    				<td><input type="text" name="p_start" id="project_start" style="width:85%" value="${project.p_start }"/><input type="button" value="☆" onclick="return showCalendar('project_start', 'y-mm-dd');"></td>
    				<td><font color="red">项目结束时间</font></td>
    				<td><input type="text" name="p_end" id="project_end" style="width:85%" value="${project.p_end }"/><input type="button" value="☆" onclick="return showCalendar('project_end', 'y-mm-dd');"></td>
    			</tr>
    			<tr align="right"><td colspan="4"><input type="submit" value="提交"/> <input type="button" value="重置" onclick="reset()"/> <input type="button" value="返回" onclick="toProjectMain()"/></td></tr>
    		</table>
    	</form>
    	</div>
    </div>
    <script>
   		function toProjectMain(){
    		document.location.href="servlet/ProjectGetAllByPageServlet";
    	}
    </script>
  </body>
</html>
