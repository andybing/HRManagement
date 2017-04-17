<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'windows.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<%=basePath %>js/windows.js"></script>
<style type="text/css">
         prp_query{width:90%;height:80px;border:1px solid blue;margin:30px auto;}
		.prp_query .p_header{background:#d0ffff;width:100%;height:30px;}
		.prp_query .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.prp_query .p_form{width:100%;height:120px;background:#eaeaea;}
		.right{float:right;}
</style>

  </head>
  
  <body>
   
   <div class="prp_query">
    	<div class="p_header"><span class="p_title">显示日报信息</span></div>
    	<div class="p_form">
    		<table border="1" cellspacing="1" cellpadding="1" bordercolor="#fff" align="center"  style="width:100%">
    			<tr align="center">
    			<td align="center"><font color="red">日期</font></td>
    			<td colspan="1" align="center">
    			2010-07-02
    			</td>
    			<td align="center">填写人</td><td align="center" colspan="4">管理员</td> 
    			</tr>
    			<tr>
    			<td align="center"><font color="red">任务</font></td>
    			<td align="center">完成项目管理系统的需求分析。<br/></td>
    			</tr>
    			
    			<tr>
    			<td align="center">工作量
    			</td>
    			<td colspan="1" align="center">3.0
    			</td>
    			<td align="center">加班
    			</td>
    			<td  align="center">3.0
    			</td>
    			</tr>
    			
    			
    			<tr align="center"><td align="center">项目</td><td colspan="1" align="center">项目管理系统
    			</td>
    			<td align="center">PRP阶段</td><td colspan="1" align="center">LX
    			</td>
    			</tr>
    			<tr>
    			 <td colspan="3" align="center"></td><td >
    			 <input type="button" align="right" value="关闭" onclick="close1()">
    			 
    			 </td>
    			</tr>
    		</table>
    </div>
    </div>
  </body>
</html>
