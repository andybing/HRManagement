<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'departmentcheckshow.jsp' starting page</title>
    
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
 <tr><th>部门</th><th>审核人</th><th>邮件地址</th><th>被审核人</th><th>日期</th></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><td>公司</td><td>丁</td><td>123@163.com</td><td>admin</td><td>2000-2-3</td></tr>
 <tr><th background="#33FFFF" colspan="5"><a href="depart/departmentcheckshow.jsp">[上一页]</a>一共有3页，当前第1页<a href="depart/departmentcheckshow.jsp">[下一页]</a>跳转到<select name="dep" onchange="ma()"><option value="11">1</option>
	<option value="22">2</option>
	<option value="33" >3</option></select></th></tr>
 </table>
  </body>
</html>
