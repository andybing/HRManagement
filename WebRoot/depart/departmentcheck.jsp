<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'departmentcheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" type="text/css" href="<%=basePath %>css/calendarAll.css"/>
  
 	 <script type="text/javascript" src="<%=basePath %>js/calendarAll.js"></script>

	<style type="text/css">
	<!--
		table td{
		text-align:center;
		background:#CCCCCC
		}
		.iframe{margin:10px auto;width:910px;height:500px;padding:0px;}
	-->
	</style>
  </head>
  
  <body>
  <form>
     <table border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="900px">
    <tr><th colspan="6">日报管理-部门未审核日报查询</th></tr>
    <tr><td>查询部门</td><td>
    <select name="dep" onchange="ma()">
	<option value="gs" selected="selected">公司</option>
	<option value="11">11</option>
	<option value="22">22</option>
	<option value="33" >33</option>
	</select>
    </td><td>查询起始日期</td><td>
    <input type="text" name="d_e" size="20" value="2004-11-1" id="start_date_b"><input type="reset" value="☆"
onclick="return showCalendar('start_date_b', 'y-m-d');">

</td><td>查询结束日期</td><td><input type="text" name="d_e" size="20" value="2004-11-1" id="end_date_b"><input type="reset" value="☆"
onclick="return showCalendar('end_date_b', 'y-m-d');"></td></tr>
<tr><td colspan="5" align="right"></td><td><input type = "button" value = "查询"/><input type = "reset" name= "reset" value = "重置" align="right"/></td></tr>
 </form>
 </table><br/>
<div class="iframe">
 	<iframe width="910px" scrolling="no" style="padding:0px;" height="500px" frameborder="0" src="depart/departmentcheckshow.jsp"></iframe>
 </div>  </body>
</html>
