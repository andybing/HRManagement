<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<META NAME="Generator" CONTENT="EditPlus">
	<META NAME="Author" CONTENT="小荷">
	<META NAME="Keywords" CONTENT="">
	<META NAME="Description" CONTENT="">
	
   <link rel="stylesheet" type="text/css" href="<%=basePath %>css/calendarAll.css"/>
  
  <script type="text/javascript" src="<%=basePath %>js/calendarAll.js"></script>
<script type="text/javascript" src="<%=basePath %>js/windows.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <script type="text/javascript">
 function reset(){
 document.getElementById("begin_date_b2").value="";
  document.getElementById("end_date_b").value="";
    document.getElementById("text").value="";
 }
  </script>
	<style type="text/css">
        .prp_query{width:90%;height:130px;border:1px solid blue;margin:40px auto;}
		.prp_query .p_header{background:#d0ffff;width:100%;height:30px;}
		.prp_query .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.prp_query .p_form{width:100%;height:100px;background:#eaeaea;}
		.right{float:right;}
	</style>
  </head>
  
  <body>
  
    <div class="prp_query">
    	<div class="p_header"><span class="p_title">日报管理-查询条件</span></div>
    	<div class="p_form">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center"><td>查询起始时间</td>
    			<td  align="center">
    			<input type="text" style="width:200" name="d_see" size="20" value="2015-9-18" id="begin_date_b2">
    			<input type="reset" value="☆" onclick="return showCalendar('begin_date_b2', 'y-mm-dd');"></td>
    			<td >查询结束时间</td>
    			<td ><input type="text" name="d_e" size="20" value="2004-11-1" id="end_date_b">
    				<input type="reset" value="☆" onclick="return showCalendar('end_date_b', 'y-m-d');"></td>
    			</tr>
    			<tr align="center">
    			<td align="center">项目</td><td align="center"><select name="pro" ><option value="所有 " selected="selected"></option></select>
    			</td>
    			<td align="center">PRP阶段</td><td align="center"><select name="pro" ><option value=所有  selected="selected"></option></select>
    			</td>
    			</tr>
    			<tr>
    			<td align="center">审核状态</td><td align="center"><select name="pro" ><option value=所有  selected="selected"></option></select></td>
    			<td align="center">任务</td><td align="center"><input value="text" name="pro1" size="20" id="text">
    			</td>
    			</tr>
    			<tr>
    			 
    			 <td align="right" colspan="5">
    			 <input type="button" align="right" value="查询">
    			  <input type="button" align="right" value="增加"  onclick="insert1()">
    			   <input type="reset" align="right" value="重置" onclick="reset()">
    			 </td>
    			</tr>
    		</table>
    	</div>
    </div>
    <br/>
    <br/>
    <div class="prp_query">
    <div class="p_header"><span class="p_title"></span></div>
    	<div class="p_form">
    	   <table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    	  <tr align="center">
    	   <th align="center" style="width:100">日期</th>
    	   <th align="center" style="width:100">项目</th>
    	   <th align="center" style="width:100">PRP阶段</th>
    	   <th align="center" colspan="2" style="width:300">任务</th>
    	   <th align="center" style="width:100">工作量</th>
    	   <th align="center" style="width:100">加班</th>
    	   <th align="center" style="width:100">状态</th>
    	   <th align="center" colspan="2" style="width:200">操作</th>
    	  </tr>
    	   <tr align="center">
    	   <td align="center" style="width:100">2010-7-10</td>
    	   <td align="center" style="width:100">项目管理系统</td>
    	   <td align="center" style="width:100">立项</td>
    	   <td align="center" colspan="2" style="width:300"><a href="<%=basePath %>ManageDaynews/windows.jsp" onclick="delete1" target="_blank
    	   ">参加项目会议</a></td>
    	   <td align="center" style="width:100">15</td>
    	   <td align="center" style="width:100">2</td>
    	   <td align="center" style="width:100">未审核</td>
    	   <td align="center"  style="width:100"><a href="<%=basePath %>ManageDaynews/update.jsp">修改</a></td>
    	   <td align="center"  style="width:100"><a href="javascript:delete1()" onclick="delete1()">删除</a> </td>
    	  </tr>
    	  
    	  
    	   </table>
    	</div>
    	</div>
  
   
  </body>
</html>
