<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_information.jsp' starting page</title>
    
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
<tr align="center"><td width="100%" align="center" colspan="6" bgcolor="#00FFFF"><strong>员工详细信息</strong></td></tr>
<tr>
<td align="center" width="16%">姓名</td>
<td align="center" width="16%">1</td>
<td align="center" width="16%">性别</td>
<td align="center" width="16%">2</td>
<td align="center" width="16%">民族</td>
<td align="center" width="16%">3</td>
</tr>
<tr>
<td align="center" width="16%">出生年月</td>
<td align="center" width="16%">4</td>
<td align="center" width="16%">部门</td>
<td align="center" width="16%">5</td>
<td align="center" width="16%">毕业文凭</td>
<td align="center" width="16%">6</td>
</tr>
<tr>
<td align="center" width="16%">籍贯</td>
<td align="center" width="16%">7</td>
<td align="center" width="16%">是否领导</td>
<td align="center" width="16%">8</td>
<td align="center" width="16%">联系方式</td>
<td align="center" width="16%">9</td>
</tr>
</table>
  </body>
</html>
