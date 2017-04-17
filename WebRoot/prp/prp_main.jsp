<%@ page language="java" import="java.util.*,com.andy.entity.Prp" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PRP阶段设定</title>

	<style>
		.prp_query{width:90%;height:94px;border:1px solid blue;margin:30px auto;}
		.prp_query .p_header{background:#d0ffff;width:100%;height:30px;}
		.prp_query .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.prp_query .p_form{width:100%;height:60px;background:#eaeaea;}
		.right{float:right;}
		.prp_data{width:90%;height:400px;border:1px solid blue;border-bottom:0;margin:20px auto;margin-bottom:0px;background-color:#eaeaea;}
		table tr{height:30px;}
		.prp_data .d_title{font-size:16px;font-weight:bold;}
		.prp_data a{text-decoration:none;}
		.page{width:90%;height:30px;margin:0px auto;border:1px solid blue;border-top:2px solid #fff;
			background-color:#d0ffff;text-align:center;line-height:30px;font-size:14px;font-family:"微软雅黑";}
		.page a{text-decoration:none;}
	</style>
  </head>
  
  <body onload = "showPage()">
    <div class="prp_query">
    	<div class="p_header"><span class="p_title">PRP阶段设定-查询条件</span></div>
    	<div class="p_form">
    		<form action="servlet/PrpGetAllByPageServlet" method="post">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center">
    				<td>PRP缩写</td>
    				<td><input type="text" name="prpShort" id="prpShort" style="width:100%"/></td>
    				<td width="200">PRP阶段名称</td>
    				<td><input type="text" name="prpName" id="prpName" style="width:100%"/></td>
    			</tr>
    			<tr align="right">
    				<td colspan="4"><input type="submit" value="查询"/> <input type="button" value="添加" onclick="toPRPAdd()"/> <input type="button" value="重置" onclick="reset()"/>
    				</td>
    			</tr>
    		</table>
    		</form>
    	</div>
    </div>
    <div class="prp_data">
    	<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    		<tr bgcolor="#d0ffff" align="center" class="d_title">
    			<td>PRP缩写</td>
    			<td>PRP阶段名称</td>
    			<td colspan="2">操作</td>
    		</tr>
    		<%--<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>
    		<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>
    		<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>
    		<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>
    		<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>
    		<tr align="center">
    			<td>DEAFULT</td><td>无PRP阶段</td>
    			<td><a href="javascript:void(0)" onclick="toPRPUpdate()">修改</a></td>
    			<td><a href="javascript:alert('确定删除')">删除</a></td>
    		</tr>--%>
    		<% int i =0; %>
    		<c:forEach items="${requestScope.prps}" var="item">
    			<tr align="center" id="<%=i++ %>">
    				<td>${item.prpShort}</td><td>${item.prpName}</td>
    				<td valign="middle">
    					<form action="servlet/PrpUpdateServlet" method="post" style="margin:2px;">
    						<input type="hidden" value="${item.prpShort}" name="prpShort"/><input name="prpName" type="hidden" value="${item.prpName}"/>
    						<input type="submit" value="修改" style="border-radius:5px;"/>
    					</form>
    				</td>
    				<td>
    					<form action="servlet/PrpDelServlet" method="post" style="margin:2px;" id="delForm">
    						<input type="hidden" value="${item.prpShort}" name="prpShort2"/><input name="prpName2" type="hidden" value="${item.prpName}"/>
    						<input type="submit" value="删除" onclick="return confirm('确认要删除嘛?')" style="border-radius:5px;"/>
    					</form>
    				</td>
    			</tr>
    		</c:forEach>
    	</table>
    </div>
    <%
    	int pageNow = 1;
    %>
    <div class="page">
    	<a href="servlet/PrpGetAllByPageServlet?pageNow=frontPage">【上一页】</a>一共有 <font style="font-weight:bold;font-size:16px;">${pageCount }</font> 页,当前第 <font style="font-weight:bold;font-size:16px;">${pageNow }</font> 页<a href="servlet/PrpGetAllByPageServlet?pageNow=nextPage">【下一页】</a>
    	 	跳转到第
    	 	<input type="hidden" value="${pageNow }" id="pn"/>
    	 	<select onchange="changePage()" id="pages">
    	 		<%
    	 			for(int j = 0;j<(Integer)request.getAttribute("pageCount");j++){
    	 		%>
    	 		<option value="<%=j+1 %>"><%=j+1 %></option>
    	 		<%} %>
    	 	</select> 页
    </div>
    <script>
    	function toPRPAdd(){
			window.location.href="prp/prp_add.jsp";
    	}
    	function reset(){
			document.getElementById("prpShort").value="";
			document.getElementById("prpName").value="";
    	}
    	function toPRPUpdate(){
        	
			//document.location.href="servlet/PrpUpdateServlet";
    	}
    	var pageNow = 1;
    	var xmlHttp;
    	if(window.XMLHttpRequest){
			xmlHttp = new XMLHttpRequest();
    	}else if(window.ActiveXObject){
			xmlHttp = new ActiveXObject();
    	}
    	
    	function callback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					var text = xmlHttp.responseText;
					alert(text);
				}
			}
    	}
    	function frontPage(){
        	if(pageNow>1){
        		pageNow--;
        		alert(pageNow);
        	}
    	}
    	function nextPage(){
        	alert(pageNow);
			if(pageNow<5){
				pageNow++;
				/**/
			}
    	}
    	function changePage(){
			var pages = document.getElementById("pages").options;
			for(var i = 0;i<pages.length;i++){
				if(pages[i].selected){
					document.location.href="servlet/PrpGetAllByPageServlet?pageNow="+pages[i].value;
				}
			}
    	}
    	function showPage(){
        	var pn = document.getElementById("pn").value;
        	var pages = document.getElementById("pages");
        	for(var i = 0;i<pages.length;i++){
				if(pages[i].value==pn){
					pages[i].selected="selected";
				}
			}
    	}
    </script>
  </body>
</html>
