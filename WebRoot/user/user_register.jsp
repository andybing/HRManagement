<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_register.jsp' starting page</title>
    
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
       <table height="40" width="800" border="1" bgcolor="#eaeaea" bordercolor="#FFFFFF" >
	<tr align="center"><td width="100%" align="center" colspan="6" bgcolor="#00FFFF"><strong>用户添加</strong></td></tr>
	<tr>
	<td align="center" width="16%">姓名</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="center" width="16%">性别</td>
	<td align="center" width="16%">
	<select style="width=200">
		<option>请选择</option>
		<option>男</option>
		<option>女</option>
	</select>
	</td>
	<td align="center" width="16%">民族</td>
	<td align="center" width="16%"><input type="text"></td>
	</tr>
	<tr>
	<td align="center" width="16%">年龄</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="center" width="16%">部门</td>
	<td align="center" width="16%">
	<select style="width=200">
	<option>请选择</option>
	<option>财务科</option>
	<option>挂号财务科</option>
	<option>药物科</option>
	<option>挂号一科</option>
	</select>
	</td>
	<td align="center" width="16%">毕业文凭</td>
	<td align="center" width="16%"><input type="text"></td>
	</tr>
	<tr>
	<td align="center" width="16%">籍贯</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="center" width="16%">联系方式</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="center">是否领导</td>
	<td align="center">
	<select style="200">
	<option>请选择</option>
	<option>是</option>
	<option>否</option>
	</select>
	</td>
	</tr>
	<tr>
	<td align="right" colspan="6"><input type="button" value="提交" onclick="toUserMain()"></td>
	</tr>
	</table> 
	<script>
		function toUserMain(){
			document.location.href="user/user_power.jsp";
		}
	</script>
  </body>
</html>
