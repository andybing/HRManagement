<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="power.js" type="text/javascript"></script>
  </head>
  
  <body>
   <table height="0" width="800" border="1" bgcolor="#eaeaea" bordercolor="#FFFFFF" >
	<tr align="center"><td width="100%" align="center" colspan="6" bgcolor="#00FFFF"><strong>员工信息修改</strong></td></tr>
	<tr>
	<td align="center" width="16%">姓名</td>
	<td align="center" width="16%">1</td>
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
	<td align="center" width="16%"><input type="text"></td>
	<td align="center" width="16%">毕业文凭</td>
	<td align="center" width="16%"><input type="text"></td>
	</tr>
	<tr>
	<td align="center" width="16%">籍贯</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="center" width="16%">联系方式</td>
	<td align="center" width="16%"><input type="text"></td>
	<td align="right"  colspan="2"></td>
	</tr>
	<tr>
	<td align="right" colspan="6"><input type="button" value="修改密码" onclick="mf()"><input type="button" value="提交" onclick="md()"></td>
	</tr>
	</table> 
	<script type="text/javascript">
		function md(){
			document.location.href="user/user_power.jsp";
		}
		function mf(){
			document.location.href="user/user_updatePassword.jsp";
		}
		
	</script>
   </body>
</html>
