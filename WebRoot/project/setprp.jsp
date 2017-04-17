<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>配置PRP</title>
	<style>
		.prp{width:80%px;height:500px;border:1px solid blue;margin:20px auto;background-color:#eaeaea;}
	</style>
	<script type="text/javascript" src="js/project.js"></script>
  </head>
  
  <body>
  	<p style="font-size:20px;text-align:center;color:blue;margin-top:20px;">结业项目项目设置</p>
  	<p style="font-size:15px;text-align:center;color:blue;margin-top:20px;">项目包含PRP阶段</p>
    <div class="prp">
    	<form action="" method="post" name="form">
    	<table border="1" bordercolor="#fff" cellspacing="0" cellpadding="0" align="center" style="width:100%">
    		<tr bgcolor="d0ffff" align="center">
    			<td>选择</td>
    			<td>PRP阶段缩写</td>
    			<td>PRP阶段</td>
    		</tr>
    		<%--<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>PP</td>
    			<td>结对编程</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr>
    		<tr align="center">
    			<td><input type="checkbox" name="prp"/></td>
    			<td>SERVICE</td>
    			<td>售后服务阶段</td>
    		</tr> --%>
    		<c:forEach items="${requestScope.prps}" var="item">
    			<tr align="center">
    				<td>
    					<input type="checkbox" name="prp" id="prp"/>
    					<input type="hidden" name="prpid" id="prpid" value="${item.prpId}"/>
    				</td>
    				<td>${item.prpShort }</td>
    				<td>${item.prpName }</td>
    			</tr>
    		</c:forEach>
    		<tr align="right">
    			<td colspan="3">
    				<input type="hidden" id="p_id" value="${requestScope.p_id }"/>
    				<input type="button" value="全选" onclick="selectAll()"/>
    				<input type="button" value="反选" onclick="selectFan()"/>
    				<input type="button" value="设置" onclick="setPrp()"/>
    				<input type="button" value="删除" onclick="delPrp()"/>
    				<input type="button" value="返回" onclick="toProjectMain()"/>
    			</td>
    		</tr>
    	</table>
    	</form>
    </div>
    <script>
    	var xmlHttp;
    	function setPrp(){
	  		var p_id = document.getElementById("p_id").value;
	  		var prps = document.form.prp;
	  		var prpids="" ;
	  		for(var i = 0;i<prps.length;i++){
				if(prps[i].checked){
					prpids += prps[i].parentNode.getElementsByTagName("input")[1].value+" ";
				}
		  	}
		  	if(prpids.length<=0){
				alert("请选择PRP阶段");
		  	}else{
			  	if(window.XMLHttpRequest){
					xmlHttp = new XMLHttpRequest();
			  	}else if(window.ActiveXObject){
					xmlHttp = new ActiveXObject();
			  	}
			  	xmlHttp.open("post", "servlet/ProjectSetPrpServlet", true);
			  	xmlHttp.onreadystatechange=callback;
			  	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			  	xmlHttp.send("p_id="+p_id+"&prpids="+prpids+"&flagAdd=true");
		  	}
		}
		function callback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					alert(xmlHttp.responseText);
				}
			}
		}
		function toProjectMain(){
			document.location.href = "servlet/ProjectGetAllByPageServlet";
		}
		function selectAll(){
			var prps = document.form.prp;
			if(prps instanceof HTMLInputElement){
				prps.checked = "checked";
			}else{
				for(var i = 0;i<prps.length;i++){
					prps[i].checked="checked";
				}
			}
		}
		function selectFan(){
			var prps = document.form.prp;
			if(prps instanceof HTMLInputElement){
				prps.checked = "";
			}else{
				for(var i = 0;i<prps.length;i++){
					if(prps[i].checked){
						prps[i].checked = "";
					}else{
						prps[i].checked = "checked";
					}
				}
			}
		}
		function delPrp(){
			var p_id = document.getElementById("p_id").value;
	  		var prps = document.form.prp;
	  		var prpids="" ;
	  		for(var i = 0;i<prps.length;i++){
				if(prps[i].checked){
					prpids += prps[i].parentNode.getElementsByTagName("input")[1].value+" ";
				}
		  	}
		  	if(prpids.length<=0){
				alert("请选择PRP阶段");
		  	}else{
			  	if(window.XMLHttpRequest){
					xmlHttp = new XMLHttpRequest();
			  	}else if(window.ActiveXObject){
					xmlHttp = new ActiveXObject();
			  	}
			  	xmlHttp.open("post", "servlet/ProjectDelPrpServlet", true);
			  	xmlHttp.onreadystatechange=callback;
			  	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			  	xmlHttp.send("p_id="+p_id+"&prpids="+prpids);
		  	}
		}
    </script>
  </body>
</html>
