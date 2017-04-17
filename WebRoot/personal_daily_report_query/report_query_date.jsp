<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人日报查询-按日期</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="<%=basePath%>js/calendarAll.js"></script>
<script type="text/javascript" src="<%=basePath%>js/onclickdate.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/calendarAll.css"/>
  </head>
  
  <body>
<form>
<table align="center" border="1" width="75%" style="background-color:#EEEEEE">
<tr align="center" style="background-color:#A7EFF5"><td colspan="8"><b>个人日报查询-按日期</b></td></tr><br />
<tr><td>开始日期</td><td><input type="text" style="width:300" name="d_see" size="20" value="2015-9-1" id="begin_date_b2"><input type="reset" value="☆"
onclick="return showCalendar('begin_date_b2', 'y-mm-dd');"><td>结束日期</td><td><input type="text" name="d_e" size="20" value="2015-9-1" id="end_date_b"><input type="reset" value="☆"
onclick="return showCalendar('end_date_b', 'y-m-d');"></td><td>人员选择</td><td><select name="person"><<option>人员A</option><option>人员B</option></select></td></tr><br />
<tr align="right" style="background-color:bgcolor=#A7EFF5"><td colspan="8"><input type="submit" value="查询"><input type="reset" value="重置"></td></tr><br>
</table>
</form>
<table align="center" border="1" width="75%"  style="background-color:#EEEEEE">
<tr style="background-color:#A7EFF5"><td colspan="3" align="center"><b>人员X</b>&nbsp;<b>个人日报</b></td></tr><br />
<tr style="background-color:#A7EFF5"><td><b>日期</b></td><td><b>总工作量</b></td><td><b>加班工作量</b></td></tr>
<tr><td><a href="javascript:void(0)" onclick="onclickdate()">2015-9-1</a></td><td>2</td><td>1</td></tr>
<tr><td><a href="javascript:void(0)" onclick="onclickdate()">2015-9-2</a></td><td>3</td><td>1</td></tr>
<tr style="background-color:#A7EFF5"><td><b>Total</b></td><td>5</td><td>2</td></tr>


</table>
<script>
	function onclickdate(){
		var obj=window.open("personal_daily_report_query/personaldailyreport.jsp","日报管理系统-显示某人某日的所有日报记录",width="600");
		return false;
	}
</script>
</body>
</html>
