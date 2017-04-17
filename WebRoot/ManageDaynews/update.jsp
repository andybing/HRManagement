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
    <link rel="stylesheet" type="text/css" href="<%=basePath %>css/calendarAll.css"/>
    <script type="text/javascript" src="<%=basePath %>js/windows.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/calendarAll.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
        .prp_query{width:90%;height:200px;border:1px solid blue;margin:50px auto;}
		.prp_query .p_header{background:#d0ffff;width:100%;height:30px;}
		.prp_query .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.prp_query .p_form{width:100%;height:180px;background:#eaeaea;}
		.right{float:right;}
	</style>
	
	<script type="text/javascript">
 function reset(){
 document.getElementById("begin_date_b2").value="";
  document.getElementById("miaoshu").value="";
    document.getElementById("worktime").value="";
    document.getElementById("addtime	").value="";
    
 }
 function select1(){
 var begin_date_b2=document.getElementById("begin_date_b2").value;
 var miaoshu=document.getElementById("miaoshu").value;
  var worktime=  document.getElementById("worktime").value;
  var addtime=  document.getElementById("addtime").value;
  if(begin_date_b2.length<=0){
  alert("日期不能为空");
  document.getElementById("begin_date_b2").focus();
  return;
  }
  if(miaoshu.length<=0){
  alert("描述不能为空");
  document.getElementById("miaoshu").focus();
  return;
  }
  if(worktime.length<=0){
  alert("工作量不能为空");
  document.getElementById("worktime").focus();
  return;
  }
  if(addtime.length<=0){
  alert("加班时间不能为空");
  document.getElementById("addtime").focus();
  return;
  }
  if(miaoshu.length>100){
  alert("描述不能超过100字");
  document.getElementById("miaoshu").focus();
  return;
  }
  if(worktime>16){
  alert("工作时间不能超过16小时");
  document.getElementById("worktime").focus();
  return;
  }
 }
  </script>
  </head>
  
  <body>
    <div class="prp_query">
    	<div class="p_header"><span class="p_title">日报管理-修改条件</span></div>
    	<div class="p_form">
    		<table border="1" cellspacing="1" cellpadding="1" bordercolor="#fff" align="center"  style="width:100%">
    			<tr align="center">
    			<td align="center"><font color="red">日期</font></td>
    			<td colspan="1" align="center">
    			<input type="text" style="width:200" name="d_see" size="20" value="2015-9-18" id="begin_date_b2"  onclick="select1()">
    			<input type="reset" value="☆" onclick="return showCalendar('begin_date_b2', 'y-mm-dd');"></td>
    			<td align="center">填写人</td><td align="center" colspan="4">管理员</td> 
    			</tr>
    			<tr>
    			<td align="center"><font color="red">任务</font></td>
    			<td align="center"><textarea rows="3" cols="10" style="width:300" id="miaoshu" onclick="select1()"></textarea><br/></td>
    			</tr>
    			
    			<tr>
    			<td align="center"><font color="red">工作量</font>
    			</td>
    			<td colspan="1" align="center"><input type="text" name="work" style="width:200" id="worktime" onclick="select1()">
    			</td>
    			<td align="center"><font color="red">加班</font>
    			</td>
    			<td  align="center"><input type="text" name="addwork" style="width:200" id="addtime" onclick="select1()">
    			</td>
    			</tr>
    			
    			
    			<tr align="center"><td align="center">项目</td><td colspan="1" align="center"><select name="pro" ><option value="无项目 " selected="selected"></option></select>
    			</td>
    			<td align="center">PRP阶段</td><td colspan="1" align="center"><select name="pro" ><option value="无PRP阶段 " selected="selected"></option></select>
    			</td>
    			</tr>
    			<tr>
    			 <td colspan="4" align="center"></td><td >
    			 <input type="button" align="right" value="提交" onclick="return1()">
    			   <input type="reset" align="right" value="重置" onclick="reset()">
    			 </td>
    			</tr>
    		</table>
    </div>
    </div>
    

  </body>
</html>
