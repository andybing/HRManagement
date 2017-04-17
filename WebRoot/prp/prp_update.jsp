<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>PRP修改页面</title>
    <style>
		.prp_add{width:90%;height:120px;border:1px solid blue;margin:30px auto;}
		.prp_add .p_header{background:#d0ffff;width:100%;height:30px;}
		.prp_add .p_header .p_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.prp_add .p_form{width:100%;height:90px;background:#eaeaea;}
	 </style>
  </head>
  
  <body>
    <div class="prp_add">
    	<div class="p_header"><span class="p_title">修改PRP阶段(红色必填)</span></div>
    	<div class="p_form">
    		<table border="1" cellspacing="0" cellpadding="0" bordercolor="#fff" align="center" style="width:100%">
    			<tr align="center">
    				<td width="30%"><font color="red">PRP缩写</font></td>
    				<td><input type="text" name="prpShort" id="prpShort" style="width:100%" value="${prpShort }"/></td>
    				<td width="200"><font color="red">PRP阶段名称</font></td>
    				<td><input type="text" name="prpName" id="prpName" style="width:100%" value="${prpName }"/></td>
    			</tr>
    			<tr align="center">
    				<td>备注</td>
    				<td colspan="3"><textarea rows="2" cols="140%" id="other"></textarea></td>
    			</tr>
    			<tr align="right">
    				<td colspan="4"><input type="button" value="提交" onclick="prpUpdate()"/> <input type="button" value="重置" onclick="reset()"/> <input type="button" value="返回" onclick="toPRPMain()"/></td>
    			</tr>
    		</table>
    	</div>
    </div>
    <script>
    	function reset(){
			document.getElementById("prpShort").value="";
			document.getElementById("prpName").value="";
			document.getElementById("other").value="";
    	}
    	function toPRPMain(){
			document.location.href="servlet/PrpGetAllByPageServlet";
    	}
    	var xmlHttp ;
    	function prpUpdate(){
			var prpShort = document.getElementById("prpShort").value;
			var prpName = document.getElementById("prpName").value;
			var other = document.getElementById("other").value;
			if(prpShort.length<=0){
				alert("PRP缩写不能为空");
				document.getElementById("prpShort").focus();
				return ;
			}
			if(prpName.length<=0){
				alert("PRP名称不能为空");
				document.getElementById("prpName").focus();
				return ;
			}
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest;
			}else if(window.ActiveXObejct){
				xmlHttp = new ActiveXObject("Microsoft.XMLHttp");
			}
			xmlHttp.open("POST", "servlet/PrpUpdateServlet2", true);
			xmlHttp.onreadystatechange = callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send('prpShort='+prpShort+'&prpName='+prpName+'&other='+other);
    	}
    	function callback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					var text = xmlHttp.responseText;
					alert(text);
					document.location.href="servlet/PrpGetAllServlet";
				}
			}
    	}
    </script>
  </body>
</html>
