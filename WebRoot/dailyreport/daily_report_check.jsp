<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.andy.entity.DailyReport"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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

		<title>My JSP '4.1.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/calendarAll.css"/>
	<script type="text/javascript" src="<%=basePath%>js/calendarAll.js" language="javascript"></script>
	<%--<script type="text/javascript" src="<%=basePath%>js/daily_report_check.js" language="javascript"></script>

	--%></head>


	<body>
	<div align="center">
		<form>
			<table bgcolor="#CCFFFF" width="80%" height="20%" border="0" cellspacing="0" cellpadding="0" style="border:1px #00CCCC solid;">
				<tr>
					<td colspan="6" bgcolor="#00FFFF" align="center">
						<b style="font-size=12px;"><font color="#FF6600">审核日报</font></b>
					</td>
				</tr>
				<tr>
					<td align="center">
						人员
					</td>
					<td colspan="2" align="center">
						<select id="select_name">
							<option value="null">
								请选择
							</option>
							<option>
								张三
							</option>
							<option>
								李四
							</option>
						</select>
					</td>
					<td align="center">
						审核状态
					</td>
					<td colspan="2" align="center">
						<select id="select_state">
							<option value="null">
								请选择
							</option>
							<option>
								未审核
							</option>
							<option>
								通过
							</option>
							<option>
								未通过
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">
						查询起始日期
					</td>
					<td colspan="2" align="center">
						<input type="text" style="width: 300"  size="20"value="2002-11-1" id="begin_date"><input type="reset" value="..." onclick="return showCalendar('begin_date', 'y-mm-dd');">
					</td>
					<td align="center">
						查询结束日期
					</td>
					<td colspan="2" align="center">
						<input type="text" style="width: 300"  size="20" value="<%=new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" id="end_date"><input type="reset" value="..." onclick="return showCalendar('end_date', 'y-m-d');">
					</td>
				</tr>
				<tr>
					<td colspan="6" align="right">
						<input type="submit" value="查询" onclick="return checkall()">
						<input type="reset" value="重置">
					</td>
				</tr>
			</table>
		</form>
		<iframe align="middle" src="<%=basePath%>dailyreport/report_check_form.jsp" width="80%" height="80%" frameborder="0"></iframe>
		<script><!--
		function modify()
		{
			var selects=document.getElementsByName("select");
			var count=0;
			var index=0;
			for(var i=0;i<selects.length;i++)
			{
				if(selects[i].checked)
				{
					count++;
					index=i;
				}
				selects[i].checked=false;
			}
			if(count!=1)
			{
				document.getElementById("all").checked=false;
				alert("请选择一条记录")
			}
			else
			{
				window.open("dailyreport/check_detail.jsp?index="+index, "日报审核","width=800,height=500,left=400,top=200");
			}
		}
		function pass()
		{
			var selects=document.getElementsByName("select");
			var count=0;
			for(var i=0;i<selects.length;i++)
			{
				if(selects[i].checked)
				{
					count++;
				}
			}
			if(count==0)
			{
				alert("请选择记录")
			}
			for(var i=0;i<selects.length;i++)
			{
				if(selects[i].checked)
				{
				var td=document.getElementById(selects[i].value+"_state");
				td.innerHTML="已通过";
				}
				selects[i].checked=false;
			}
			document.getElementById("all").checked=false;
		}
		function unpass()
		{
			var selects=document.getElementsByName("select");
			var count=0;
			for(var i=0;i<selects.length;i++)
			{
				if(selects[i].checked)
				{
					count++;
				}
			}
			if(count==0)
			{
				alert("请选择记录")
			}
			for(var i=0;i<selects.length;i++)
			{
				if(selects[i].checked)
				{
				var td=document.getElementById(selects[i].value+"_state");
				td.innerHTML="<font color='red'>未通过</font>";
				}
				selects[i].checked=false;
			}
			document.getElementById("all").checked=false;
		}

		function selectall()
		{
			var array=document.getElementsByName("select");
			for(var i=0;i<array.length;i++)
			{
				array[i].checked=document.getElementById("all").checked;
			}
		}
		function checkname()
		{
			var check=document.getElementById("select_name").value;
			if(check=="null")
			{
				alert("请选择一个人员");
				return false;
			}
			return true;
		}
		function checkstate()
		{
			var check=document.getElementById("select_state").value;
			if(check=="null")
			{
				alert("请选择审核状态");
				return false;
			}
			return true;
		}
		function checkdate()
		{
			var begin_date=document.getElementById("begin_date").value.split("-");
			var end_date=document.getElementById("end_date").value.split("-");
			if(parseInt(begin_date[0])>parseInt(end_date[0]))
			{
				alert("开始时间不能大于结束时间");
				return false;
			}else if(parseInt(begin_date[0])==parseInt(end_date[0]))
			{
				if(parseInt(begin_date[1])>parseInt(end_date[1]))
				{
					alert("开始时间不能大于结束时间");
					return false;
				}else if(parseInt(begin_date[1])==parseInt(end_date[1]))
				{
					if(parseInt(begin_date[2])>parseInt(end_date[2]))
					{
						alert("开始时间不能大于结束时间");
						return false;
					}
				}
			}
			return true;
		}
		function checkall()
		{
			return checkdate()&&checkname()&&checkstate();
		}
		</script>
		</div>
	</body>
</html>