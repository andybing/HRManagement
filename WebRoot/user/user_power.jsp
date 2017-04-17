<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'power.jsp' starting page</title>
    
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
 <table height="129" width="942" border="1" bgcolor="#eaeaea" bordercolor="#FFFFFF">
<tr><td width="100%" align="center" colspan="6" bgcolor="#00FFFF"><strong>员工管理-查询条件</strong></td></tr>
<tr>
<td align="center" width="16%">查询部门</td>   
<td align="center" width="16%">
<select style="width=200">
<option>请选择</option>
<option>财务科</option>
<option>挂号财务科</option>
<option>药物科</option>
<option>挂号一科</option>
</select>
</td>
<td align="center" width="16%">查询姓名</td>
<td align="center" width="16%"><input type="text"></td>
<td align="center" width="16%">查询性别</td>
<td align="center" >
<select style="width=200">
<option>请选择</option>
<option>男</option>
<option>女</option>
</select>
</td>
</tr>
<tr>
<td align="center">是否领导</td>
<td align="center">
<select style="200">
<option>请选择</option>
<option>是</option>
<option>否</option>
</select>
</td>
<td align="center">毕业文凭</td>
<td align="center">
<select style="200">
<option>请选择</option>
<option>高中</option>
<option>本科</option>
<option>硕士</option>
<option>博士</option>
<option>博士后</option>
<option>其他</option>
</select>
</td>
</tr>
<tr>
<td align="right" colspan="6"><input type="button" value="查询"><input type="button" value="添加" onclick="mf()"><input type="button" value="重置"></td>
</tr>
</table>
<h6></h6>
<table height="" width="945" border="1" bgcolor="#eaeaea" bordercolor="#FFFFFF">
<tr>
<td align="center" height="40" bgcolor="#00FFFF">部门</td>
<td align="center" bgcolor="#00FFFF">姓名</td>
<td align="center" bgcolor="#00FFFF">性别</td>
<td align="center" bgcolor="#00FFFF">是否领导</td>
<td align="center" bgcolor="#00FFFF">毕业文凭</td>
<td align="center" bgcolor="#00FFFF">查看信息</td>
<td align="center" bgcolor="#00FFFF">修改信息</td>
<td align="center" bgcolor="#00FFFF">删除信息</td>
</tr>
<tr>
<td align="center">l</td>
<td align="center">2</td>
<td align="center">3</td>
<td align="center">4</td>
<td align="center">5</td>
<td align="center"><a href="javascript:void(0)" onclick="ma()">查看详细信息</a></td>
<td align="center"><a  href="javascript:void(0)" onclick="mb()">修改信息</a></td>
<td align="center"><a  href="javascript:void(0)" onclick="javascript:alert('确定删除?');">删除</a></td>
</tr>
</table>
<script>
	function mf(){
		document.location.href="user/user_register.jsp";
	}
	function ma(){
		document.location.href="user/user_information.jsp";
	}
	function mb(){
		document.location.href="user/user_update.jsp";
	}	
</script>
</body>
</html>
