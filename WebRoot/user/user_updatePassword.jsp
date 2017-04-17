<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_updatePassword.jsp' starting page</title>
    
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
    <table height="40" width="600" border="1" bgcolor="#eaeaea" bordercolor="#FFFFFF">
	<tr align="center">
	<td height="3" width="100%" align="center" colspan="2" bgcolor="#00FFFF"><strong>密码修改</strong></td>
	</tr>
	<tr align="center">
	<td width="50%" align="center">原密码</td>
	<td width="50%" align="center" ><input type="text"></td>
	</tr>
	<tr align="center">
	<td width="50%" align="center">新密码</td>
	<td width="50%" align="center" ><input type="text"></td>
	</tr>
	<tr align="center">
	<td width="50%" align="center">重复密码</td>
	<td width="50%" align="center" ><input type="text"></td>
	</tr>
	<tr>
	<td align="right" colspan="6"><input type="button" value="确定" onclick="javascript:document.location.href='user/user_power.jsp'"></td>
	</tr>
    </table>
  </body>
</html>
