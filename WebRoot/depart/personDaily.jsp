<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PersonUncomSerch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <% Date date = new Date();
  	
   %>
    <table border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="80%">
    <tr><th colspan="15">个人未写日报查询</th></tr>
    <tr><td>--</td><td>08/21</td><td>08/22</td><td>08/23</td><td>08/24</td><td>08/25</td><td>08/26</td><td>08/27</td><td>08/28</td><td>08/29</td><td>08/30</td><td>08/31</td><td>09/01</td><td>09/02</td><td>09/03</td></tr>
    <tr><td>姓名</td><td>星期六</td><td>星期天</td><td>星期一</td><td>星期二</td><td>星期三</td><td>星期四</td><td>星期五</td><td>星期六</td><td>星期天</td><td>星期一</td><td>星期二</td><td>星期三</td><td>星期四</td><td>星期五</td></tr>
    <tr><td>admin</td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td></td><td></td><td></td><td></td><td></td></tr>
    <tr><td>admin</td><td bgcolor="red"><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td bgcolor="red"></td><td></td><td></td><td></td><td></td><td></td></tr>
    </table>
  </body>
</html>
