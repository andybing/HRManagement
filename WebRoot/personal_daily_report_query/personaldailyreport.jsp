<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>日报管理系统-显示某人所有的日报记录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript" type="text/javascript">
function closewindow(){
	window.close();
	}
</script> 
  </head>
  
  <body>
  <table align="center" border="1" width="75%">
<tr><td colspan="5" align="center"><b>显示人员A在2015-9-1的所有日报记录</b></td></tr><br />
<tr><td><b>项目</b></td><td><b>任务描述</b><td><b>工作量</b></td><td><b>加班</b><td><b>状态</b></td></tr>
<tr><td><b>物业管理系统</b></td><td><b>项目立项</b><td><b>2</b></td><td><b>2</b><td><b>通过</b></td></tr>
<tr><td colspan="5" align="right"><input type="button"  value="关闭"  onclick="closewindow()"/></td></tr>
</table>
  </body>
</html>
