<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'proInputSerchbymileShow.jsp' starting page</title>
    
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
		background:#CCCCCC
		}
	-->
	</style>
  </head>
  
  <body>
    <table border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="900px">
 <tr><th>阶段</th><th>总工作量</th><th>加班工作量</th></tr>
 <tr><td>11</td><td>10</td><td>8</td></tr>
 <tr><td>11</td><td>10</td><td>8</td></tr>
 <tr><td>11</td><td>10</td><td>8</td></tr>
 <tr><th>total</th><th>30</th><th>24</th></tr>
 </table>
  </body>
</html>
