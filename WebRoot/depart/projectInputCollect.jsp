<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'projectInputCollect.jsp' starting page</title>
    
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
    <table border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="900px">
    <tr><th colspan="5"><font size="12px"> 项目投入汇总</font></th></tr>
    <tr>
    <td>项目
    <select name="dep" onchange="ma()">
	<option value="gs" selected="selected">所有</option>
	<option value="11">11</option>
	<option value="22">22</option>
	<option value="33" >33</option>
	</select>
    </td>
    <td>开始日期</td><td>
    <input type="text" name="d_see" size="20" value="2002-11-1" id="begin_date_b2"><input type="reset" value="☆" onclick="return showCalendar('begin_date_b2', 'y-mm-dd');">
</td><td>结束日期</td><td><input type="text" name="d_e" size="20" value="2004-11-1" id="end_date_b"><input type="reset" value="☆" onclick="return showCalendar('end_date_b', 'y-m-d');"></td>
</tr>
<tr><td colspan="4"></td><td><input type = "button" value = "查询"/><input type = "button" value = "重叠"/></td></tr>
 </table><br/>
   <div class="iframe">
 	<iframe width="910px" scrolling="no" style="padding:0px;" height="500px" frameborder="0" src="depart/projectInputCollectShow.jsp"></iframe>
 </div>
  </body>
</html>
