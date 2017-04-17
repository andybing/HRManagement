<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP '4.2.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript" src="<%=basePath%>js/check_detail.js" language="javascript"></script>
	
	</head>


	<%
		int index=0;
		index=Integer.parseInt(request.getParameter("index"));
	 %>

	<body onload="init(<%=index %>)">
	<div align="center">
		<form>
			<table bgcolor="#CCFFFF" width="80%" border="0"
				cellspacing="0" cellpadding="0" style="border: 1px #00CCCC solid;padding-top: 5px;padding-bottom: 5px">
				<tr>
					<td colspan="4" bgcolor="#00FFFF" align="center">
						<b style=""><font color="#FF6600">日报审核-修改</font>
						</b>
					</td>
				</tr>
				<tr>
					<td align="center">
						姓名
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="name"/>
					</td>
					<td align="center">
						日期
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="date"/>
					</td>
				</tr>
				<tr>
					<td align="center">
						工作量（H）
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="workload"/>
					</td>
					<td align="center">
						加班工作量（H）
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="overtime"/>
					</td>
				</tr>
				<tr>
					<td align="center">
						项目
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="project"/>
					</td>
					<td align="center">
						PRP阶段
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="stage"/>
					</td>
				</tr>
				<tr>
					<td align="center">
						工作描述
					</td>
					<td align="center">
						<input type="text" readonly="readonly" id="content"/>
					</td>
					<td align="center">
					</td>
					<td align="center">
					</td>
				</tr>
			</table>
		</form>
		<form>
			<table bgcolor="#CCFFFF" width="80%" border="0"
				cellspacing="0" cellpadding="0" style="border: 1px #00CCCC solid;padding-top: 5px;padding-bottom: 5px">
				<tr>
					<td align="center" style="padding-left: 70px;padding-right: 70px">审核信息
					</td>
					<td>
						<input type="radio" name="state" id="is_pass" value="pass" checked="checked"/>通过
						<input type="radio" name="state" id="is_not_pass" value="unpass"/>未通过
					</td>
				</tr>
				<tr>
					<td align="center">原因
					</td>
					<td>
					<input type="text" size="40"/>
					</td>
				</tr>
				<tr>
					<td align="right" colspan="2">
					<input type="button" value="修改" onclick="modify(<%=index %>)"/>
					<input type="button" value="返回" onclick="back()"/>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</body>
</html>
