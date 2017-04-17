<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.andy.entity.DailyReport"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'report_check_form.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	 <jsp:useBean id="DailyRepor" class="com.andy.entity.DailyReport"></jsp:useBean>
	 
  </head>
  
  <body>
  <div align="center">
    <form>
			<table bgcolor="#CCFFFF" width="100%"  border="0" cellspacing="0"  cellpadding="10px" style="border:1px #00CCCC solid;">
				<tr bgcolor="#00FFFF" align="center">
					<td><input type="checkbox" id="all" onclick="selectall()"/>选择</td>
					<td id="d_name">姓名</td>
					<td>项目</td>
					<td>工作内容</td>
					<td>PRP阶段</td>
					<td>职能</td>
					<td>日期</td>
					<td>工作量（H）</td>
					<td>加班（H）</td>
					<td>状态</td>
				</tr>
				<tr>
					<td colspan="10" align="right">
						<input type="button" value="通过" onclick="pass()"/>
						<input type="button" value="不通过" onclick="unpass()"/>
						<input type="button" value="修改" onclick="modify()"/>
					</td>
				</tr>
			</table>
		</form>
		</div>
  </body>
</html>
