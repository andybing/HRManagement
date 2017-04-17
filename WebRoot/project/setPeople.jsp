<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>项目设置人员</title>
    <style>
    	.people{width:90%;height:500px;border:1px solid blue;margin:20px auto;background-color:#eaeaea;}
    </style>
    <script type="text/javascript" src="js/project.js"></script>
  </head>
  
  <body>
    <p style="font-size:20px;text-align:center;color:blue;margin-top:20px;">结业项目设置</p>
  	<p style="font-size:15px;text-align:center;color:blue;margin-top:20px;">项目包含PRP阶段</p>
  	<div class="people">
  		<table border="1" cellpadding="0" cellspacing="0" style="width:100%" bordercolor="#fff">
  		 	<tr align="center">
  		 		<td>项目经理</td>
  		 		<td align="left"><input type="text" id="xiangmu" readonly="readonly"/> <input type="button" value="添加" 
  		 			onclick="window.open('project/setPeople_xiangmu.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>研发负责人</td>
  		 		<td align="left"><input type="text" id="yanfa" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_yanfa.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>财务负责人</td>
  		 		<td><input type="text" id="caiwu" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_caiwu.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 	</tr>
  		 	<tr align="center">
  		 		<td>法规/认证</td>
  		 		<td align="left"><input type="text" id="fagui" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_fagui.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>市场负责人</td>
  		 		<td align="left"><input type="text" id="shichang" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_shichang.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>验证负责人</td>
  		 		<td><input type="text" id="yanzheng" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_yanzheng.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 	</tr>
  		 	<tr align="center">
  		 		<td>生产负责人</td>
  		 		<td align="left"><input type="text" id="shengchan" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_shengchan.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>应用负责人</td>
  		 		<td align="left"><input type="text" id="yingyong" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_yongying.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>采购负责人</td>
  		 		<td><input type="text" id="caigou" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_caigou.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 	</tr>
  		 	<tr align="center">
  		 		<td>服务负责人</td>
  		 		<td align="left"><input type="text" id="fuwu" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_fuwu.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 		<td>质量保证</td>
  		 		<td align="left"><input type="text" id="zhiliang" readonly="readonly"/> <input type="button" value="添加"
  		 			onclick="window.open('project/setPeople_zhiliang.jsp','配置人员','width=400,height=400,left=500,top=200')"/></td>
  		 	</tr>
  		 	<tr align="center">
  		 		<td>其他项目人员</td>
  		 		<td colspan="5" align="left"><textarea cols="100%" id="other"></textarea></td>
  		 	</tr>
  		 	<tr align="right">
  		 		<td colspan="6">
  		 			<input type="button" value="设置" style="width:50px;" onclick="projectSetPeople()"/>
  		 			<input type="button" value="返回" onclick="toProjectMain()"/>
  		 		</td>
  		 	</tr>
  		</table>
  	</div>
  	<script>
  		function toProjectMain(){
  	  		document.location.href="servlet/ProjectGetAllByPageServlet";
  		}
  		var xmlHttp ;
  		function projectSetPeople(){
  			var xiangmu = document.getElementById("xiangmu").value;
  			var yanfa = document.getElementById("yanfa").value;
  			var caiwu = document.getElementById("caiwu").value;
  			var fagui = document.getElementById("fagui").value;
  			var shichang = document.getElementById("shichang").value;
  			var yanzheng = document.getElementById("yanzheng").value;
  			var shengchan = document.getElementById("shengchan").value;
  			var yingyong = document.getElementById("yingyong").value;
  			var caigou = document.getElementById("caigou").value;
  			var fuwu = document.getElementById("fuwu").value;
  			var zhiliang = document.getElementById("zhiliang").value;
  			var other = document.getElementById("other").value;
  			if(xiangmu.length==0){
  				alert("项目经理不能为空");
  				document.getElementById("xiangmu").focus();
  				return false;
  			}
  			if(yanfa.length==0){
  				alert("研发负责人不能为空");
  				document.getElementById("yanfa").focus();return false;
  			}
  			if(caiwu.length==0){
  				alert("财务负责人不能为空");
  				document.getElementById("caiwu").focus();return false;
  			}
  			if(fagui.length==0){
  				alert("法规/认证不能为空");
  				document.getElementById("fagui").focus();return false;
  			}
  			if(shichang.length==0){
  				alert("市场负责人不能为空");
  				document.getElementById("shichang").focus();return false;
  			}
  			if(yanzheng.length==0){
  				alert("验证负责人不能为空");
  				document.getElementById("yanzheng").focus();return false;
  			}
  			if(shengchan.length==0){
  				alert("生产负责人不能为空");
  				document.getElementById("shengchan").focus();return false;
  			}
  			if(yingyong.length==0){
  				alert("应用负责人不能为空");
  				document.getElementById("yingyong").focus();return false;
  			}
  			if(caigou.length==0){
  				alert("采购负责人不能为空");
  				document.getElementById("caigou").focus();return false;
  			}
  			if(fuwu.length==0){
  				alert("服务负责人不能为空");
  				document.getElementById("fuwu").focus();return false;
  			}
  			if(zhiliang.length==0){
  				alert("质量保证不能为空");
  				document.getElementById("zhiliang").focus();return false;
  			}
  			if(window.XMLHttpRequest){
  				xmlHttp = new XMLHttpRequest();
  			}else if(window.ActiveXObject){
  				xmlHtp = new ActiveXObject();
  			}
  			xmlHttp.open("post","servlet/ProjectSetPeopleServlet",true);
  			xmlHttp.onreadystatechange = callback;
  			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  			var msg = "xiangmu="+xiangmu+"&yanfa="+yanfa+"&caiwu="+caiwu+"&fagui="+fagui+"&shichang="+shichang+
  				"&yanzheng="+yanzheng+"&shengchan="+shengchan+"&yingyong="+yingyong+"&caigou="+caigou+"&fuwu="+fuwu+"&zhiliang="
  				+zhiliang+"&other="+other+"&flagAdd=true";
  			xmlHttp.send(msg);
  		}
  		function callback(){
  			if(xmlHttp.readyState == 4){
  				if(xmlHttp.status == 200){
  					alert(xmlHttp.responseText);
  				}
  			}
  		}
  	</script>
  </body>
</html>
