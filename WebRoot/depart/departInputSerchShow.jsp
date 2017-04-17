<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'departInputSerchShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	<!--
		table td{
		text-align:center;
		background:#EAEAEA
		}
	-->
	</style>
  </head>
  
  <body>
    <table  border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="900px" >
    <tr><th>项目</th><th>总工作量</th><th>加班工作量</th></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><td>超市管理系统</td><td>162.0</td><td>23.0</td></tr>
    <tr><th>ToTal</th><th>2550</th><th>121</th></tr>
    </table>
  </body>
</html>
