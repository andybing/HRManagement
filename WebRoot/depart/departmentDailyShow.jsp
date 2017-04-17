<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'departmentDailyShow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
	<!--
		table td{
		text-align:center;
		background:#EAEAEA
		}
	-->
	</style>
  </head>
  
  <body>
  <form>
    <table id = "table1"border="1" cellspacing="0" align="center" bgcolor="#A7EFF5" width="900px">
 	<tr><th></th><th>--</th><th>08/21</th><th>08/22</th><th>08/23</th><th>08/24</th><th>08/25</th><th>08/26</th><th>08/27</th><th>08/28</th><th>08/29</th><th>08/30</th><th>08/31</th><th>09/01</th><th>09/02</th><th>09/03</th></tr>
    <tr><th><input type = "checkbox" name = "hob"   onclick="selectAll()"/>选择</th><th>姓名</th><th>星期六</th><th>星期天</th><th>星期一</th><th>星期二</th><th>星期三</th><th>星期四</th><th>星期五</th><th>星期六</th><th>星期天</th><th>星期一</th><th>星期二</th><th>星期三</th><th>星期四</th><th>星期五</th></tr>
    <tr><td><input type="checkbox" name = "user"/></td><td>admin</td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
    <tr><td><input type="checkbox"/ name = "user"></td><td>admin</td><td ><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td ></td><td></td><td></td><td></td><td></td><td></td></tr>
 	<tr><th colspan="16" align="right"><input type = "button" name = "remind" value = "发送提醒"  onclick="sendMessage()"/></th></tr>
 </table>
  </body>
  </form>
   <script type="text/javascript">
  function sendMessage()
{
	var user = document.forms[0].user;
	for(i=0;i<user.length;i++)
		{
			if(user[i].checked)
			{
			if(confirm("确认发送提醒吗？"))
				{		
					alert("发送成功！");
				}
				else
				{
					alert("取消提醒");				
				}
				break;
				}else
			{
				alert("请选择员工");
			}
		}
	
	window.location.reload("depart/departmentDaily.jsp")
} 
function selectAll()
{
	var hobby = document.forms[0].user;
		if(document.forms[0].hob.checked)
		{
			for(i=0;i<hobby.length;i++)
			{
				hobby[i].checked = "checked";
				}
			}
			else
			{
				for(i=0;i<hobby.length;i++)
			{
				hobby[i].checked = "";
				}
			}
}

  </script>
</html>
