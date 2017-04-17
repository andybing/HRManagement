<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>工程添加页面</title>
    <link rel="stylesheet" type="text/css" href="/PowerProject/css/calendarAll.css"/>
  	<script type="text/javascript" src="/PowerProject/js/calendarAll.js"></script>
  	<script type="text/javascript" src="js/project.js"></script>
    <style>
		.project_add{width:90%;height:110px;border:1px solid blue;margin:30px auto;}
		.project_add .p_header{background:#d0ffff;width:100%;height:30px;}
		.project_add .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.project_add .p_form{width:100%;height:80px;background:#eaeaea;}
	</style>
  </head>
  
  <body>
     <div class="project_add">
    	<div class="p_header"><span class="p_title">增加新项目阶段(红色必填)</span></div>
    	<div class="p_form">
    	<form action="servlet/ProjectAddServlet" method="post">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center">
    				<td width="30%"><font color="red">项目编号</font></td>
    				<td><input type="text" name="p_id" id="p_id" style="width:100%"/></td>
    				<td width="200"><font color="red">项目名称</font></td>
    				<td><input type="text" name="p_name" id="p_name" style="width:100%"/></td>
    			</tr>
    			<tr align="center">
    				<td><font color="red">项目开始时间</font></td>
    				<td><input type="text" name="p_start" id="p_start" style="width:85%"/><input type="button" value="☆" onclick="return showCalendar('p_start', 'y-mm-dd');"></td>
    				<td><font color="red">项目结束时间</font></td>
    				<td><input type="text" name="p_end" id="p_end" style="width:85%"/><input type="button" value="☆" onclick="return showCalendar('p_end', 'y-mm-dd');"></td>
    			</tr>
    			<tr align="right">
    				<td colspan="4">
    					<input type="submit" value="提交" onclick="return check()"/> 
    					<input type="button" value="重置" onclick="reset()"/> 
    					<input type="button" value="返回" onclick="toProjectMain()"/>
    				</td>
    			</tr>
    		</table>
    	</form>
    	</div>
    </div>
    <script>
    	function check(){
			var p_id = document.getElementById("p_id");
			if(p_id.value.length<=0){
				alert("项目编号不能为空");
				p_id.focus();
				return false;
			}
			var p_start = document.getElementById("p_start");
			var reg = /^([1-2]\d{3})[V|\-](0?[1-9]|10|11|12)[V|\-]([1-2]?[0-9]|0[1-9]|30|31)$/ig;
			if(p_start.value.length<=0){
				alert("项目起始日期不能为空");
				p_start.focus();
				return false;
			}
			if(!reg.test(p_start.value)){
				alert("项目起始日期格式不正确");
				p_start.focus();
				return false;
			}
			var p_end = document.getElementById("p_end");
			if(p_end.value.length<=0){
				alert("项目结束日期不能为空");
				p_end.focus();
				return false;
			}
			var reg = /^([1-2]\d{3})[V|\-](0?[1-9]|10|11|12)[V|\-]([1-2]?[0-9]|0[1-9]|30|31)$/ig;
			if(!reg.test(p_end.value)){
				alert("项目结束日期格式不正确");
				p_end.focus();
				return false;
			}
			if(p_start.value.localeCompare(p_end.value)==1){
				alert("结束时间不正确");
				return false;
			}
			var p_name = document.getElementById("p_name");
			if(p_name.value.length<=0){
				alert("项目名称不能为空");
				p_name.focus();
				return false;
			}
    	}
    	function toProjectMain(){
			location.href="servlet/ProjectGetAllByPageServlet";
    	}
    </script>
  </body>
</html>