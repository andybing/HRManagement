<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>职能部门设定</title>
    <link rel="stylesheet" href="css/ext-all.css" />
    <script type="text/javascript" src="js/ext-base.js"></script>
    <script type="text/javascript" src="js/ext-all.js"></script>
    <style>
    	*{margin:0px;padding:0px;}
    	.left{width:20%;height:500px;float:left;margin:50px 30px;padding:30px;}
    	/*.left .l_title{width:200px;height:30px;background-color:#eaeaea;
    		text-align:center;line-height:30px;font-weight:bold;cursor:pointer;}*/
    	
    	.right{width:60%;height:200px;float:left;margin:50px 10px;}
    	a{text-decoration:none;}
    	.left .level1{font-size:15px;font-family:"微软雅黑";margin-top:20px;display:block;width:100px;display:none;
    		height:30px;text-align:center;line-height:30px;background:#eaeaea;color:#000;}
    	.left .level2{width:150px;height:300px;margin:0px 60px;display:none;}
    	.left .level2 ul li{relative;height:25px;line-height:25px;list-style:none;font-size:15px;cursor:pointer;display:block;}
    	.left .level2 ul li:hover{background:#cdcdcd;}
    	.left .level2 .level3_1{width:150px;height:50px;margin:0px 15px;display:none;}
    	.left .level2 .level3_1 ul li{font-size:15px;cursor:pointer;}
    	.left .level2 .level2_2{}
    	.center{width:20px;height:500px;float:left;margin:50px 0 0 0;background:#eaeaea;}
    	.right .department{width:90%;height:50px;border:1px solid blue;margin:30px auto;}
		.right .department .d_title{display:block;width:80%;text-align:center;
			font-size:16px;font-family:"微软雅黑";line-height:30px;font-weight:bold;}
		.right .department .d_form{width:100%;height:50px;background:#eaeaea;}
		.updateDept{width:60%;height:120px;float:right;margin-right:100px;display:none;}
		.updateDept .form{width:90%;height:40%;margin:30px auto;border:1px solid blue;background-color: #eaeaea;}
    </style>
  </head>
  <body>
  	<div class="left">
  		<div id="tree_div"></div>
  		<%--<iframe src="tree.jsp" style="width:100%;height:500px;border:0;"></iframe>--%>
  		<%--<div class="l_title" onclick="showCompany()">Show Department↓</div>
  		<a href="javascript:void(0)" onclick="show()" class="level1" id="level1"><span class="down">↓</span>公司</a>
  		<div class="level2" id="level2">
  			<ul>
  				<li><font color="blue"><a href="javascript:void(0)" onclick="showLevel3_1()" id="level2_1"><span class="down">↓</span>财务科</a></font></li>
  				<div class="level3_1" id="level3_1">
  					<ul>
  						<li><font color="blue"><a href="javascript:void(0)" onclick = "showLevel4_1()">药物输入统计科</a></font></li>
  						<li><font color="blue"><a href="javascript:void(0)" onclick = "showLevel4_2()">门诊财务科</a></font></li>
  					</ul>
  				</div>
  				<li><font color="blue" id="level2_2">人事科</font></li>
  				<li><font color="blue">医疗科</font></li>
  				<li><font color="blue">药物科</font></li>
  				<li><font color="blue">保安部</font></li>
  			</ul>
  		</div> --%>
  	</div>
  	<div class="center"></div>
  	<div class="right">
  		<p align="center" style="font-size: 20px;color:blue;">部门设定界面</p>
  		<p align="center" style="font-size:14px;color:blue;margin-top: 20px;">当前部门信息</p>
  		<div class="department">
    		<div class="d_form">
    		<form action="" method="post" name="form">
    			<table border="1" cellspacing="0" cellpadding="0" align="center" style="width: 100%" bordercolor="#fff">
    				<tr align="center">
    					<td>部门名称</td>
    					<td style="width: 35%"><input type="text" name="dName" id="dName" style="width:100%"/></td>
    					<td>上级部门</td>
    					<td style="width: 35%"><input type="text" name="upName" id="upName" style="width:100%"/></td>
    				</tr>
    				<tr align="right">
    					<td colspan="4">
    						<input type="button" value="添加" onclick="addDept()"/>
    						<input type="button" value="删除" onclick="delDept()"/>
    						<input type="button" value="修改" onclick="showUpdate()"/>
    					</td>
    				</tr>
    			</table>
    		</form>
    		</div>
    	</div>
  	</div>
  	<div class="updateDept" id="updateDept">
  		<div class="form">
  			<form action="" method="post">
  				<table border="1" cellspacing="0" cellpadding="0" align="center" style="width: 100%" bordercolor="#fff">
    				<tr align="center">
    					<td>部门名称</td>
    					<td style="width: 35%"><input type="text" name="dept_name" id="dept_name" style="width:100%"/></td>
    					<td>上级部门</td>
    					<td style="width: 35%"><input type="text" name="up_name" id="up_name" style="width:100%"/></td>
    				</tr>
    				<tr align="right">
    					<td colspan="4">
    						<input type="button" value="修改" onclick="updateDept()"/>
    					</td>
    				</tr>
    			</table>
  			</form>
  		</div>
  	</div>
  	<script>
  		var xmlHttp;
  		function addDept(){
			var dName = document.forms[0].dName.value;
			var upName = document.forms[0].upName.value;
			if(dName.length<=0){
				alert("部门名称不能为空");
				document.forms[0].dName.focus();
				return ;
			}
			if(upName.length<=0){
				alert("上级部门不能为空");
				document.forms[0].upName.focus();
				return ;
			}
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			xmlHttp.open("post", "servlet/DepartmentAddServlet", true);
			xmlHttp.onreadystatechange=callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dName="+dName+"&upName="+upName);
  		}
  		function callback(){
			if(xmlHttp.readyState==4){
				if(xmlHttp.status == 200){
					var text = xmlHttp.responseText;
					alert(text);
				}
			}
  		}
  		function showCompany(){
			var level1 = document.getElementById("level1");
			if(level1.style.display==""){
				level1.style.display="block";
				//document.getElementsByTagName("span")[0].firstChild.nodeValue="↑";
		  	}
  		}
  		function show(){
			var level2 = document.getElementById("level2");
			if(level2.style.display==""){
				level2.style.display="block";
				document.getElementsByTagName("span")[0].firstChild.nodeValue="↑";
			}else{
				level2.style.display = "";
				document.getElementsByTagName("span")[0].firstChild.nodeValue="↓";
			}
  	  	}
  	  	function showLevel3_1(){
			var level3_1 = document.getElementById("level3_1");
			if(level3_1.style.display == ""){
				level3_1.style.display="block";
				document.getElementsByTagName("span")[1].firstChild.nodeValue="↑";
			}else{
				level3_1.style.display = "";
				document.getElementsByTagName("span")[1].firstChild.nodeValue="↓";
			}
			var text = document.getElementById("level2").getElementsByTagName("a")[0].firstChild.nodeValue;
			document.getElementById("dname").value = text;
  	  	}
  	  	function showLevel4_1(){
			var text = document.getElementById("level3_1").getElementsByTagName("a")[0].firstChild.nodeValue;
			document.getElementById("dName").value = text;
  	  	}
  	    function showLevel4_2(){
			var text = document.getElementById("level3_1").getElementsByTagName("a")[1].firstChild.nodeValue;
			document.getElementById("dName").value = text;
	  	}
	  	function delDept(){
	  		var dName = document.forms[0].dName.value;
	  		if(dName.length<=0){
				alert("部门名称不能为空");
				document.forms[0].dName.focus();
				return ;
			}
			var upName = document.forms[0].upName.value;
			if(upName.length<=0){
				alert("部门名称不能为空");
				document.forms[0].upName.focus();
				return ;
			}
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			xmlHttp.open("post", "servlet/DepartmentDelServlet", true);
			xmlHttp.onreadystatechange=callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dName="+dName+"&upName="+upName);
	  	}
	  	var dName = document.getElementById("dName");
	  	var upName = document.getElementById("upName");
	  	Ext.onReady(function(){
			Ext.BLANK_IMAGE_URL = "images/s.gif";
			var rootNode = new Ext.tree.AsyncTreeNode({
				text : "公司",
				id : "0",
				expanded : true
			});
			var tree = new Ext.tree.TreePanel({
				root : rootNode,
				loader : new Ext.tree.TreeLoader({
				    dataUrl : "servlet/DepartmentGetAllServlet"
				}),
				width : 200,
				height : 400
			});
			tree.on("beforeload" , function(node){
				tree.loader.baseParams.id = node.id;
			});
			tree.on("click", function(node){
				Ext.Ajax.request({
				url : "servlet/DepartmentGetAllServlet", 
				params : {id:node.id},
				success : function(res){
					var txt = res.responseText;
					var obj = Ext.decode(txt);
					document.getElementById("dName").value=node.text;
					}
				});
			});
			tree.render(Ext.get("tree_div"));
		});
	  	function showUpdate(){
  	  		var updateDept = document.getElementById("updateDept");
  			var dName = document.forms[0].dName.value;
	  		if(dName.length<=0){
				alert("部门名称不能为空");
				document.forms[0].dName.focus();
				return ;
			}
			var upName = document.forms[0].upName.value;
			if(upName.length<=0){
				alert("部门名称不能为空");
				document.forms[0].upName.focus();
				return ;
			}
			
			updateDept.style.display = "block";
			document.getElementById("dept_name").value=dName;
			document.getElementById("up_name").value=upName;
			
  		}
	  	function updateDept(){
  			var dName = document.getElementById("dName").value;
  	  		var dept_name = document.getElementById("dept_name").value;
  	  		var up_name = document.getElementById("up_name").value;
	  	  	if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			xmlHttp.open("post", "servlet/DepartmentUpdateServlet", true);
			xmlHttp.onreadystatechange=callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dName="+dName+"&dept_name="+dept_name+"&up_name="+up_name);
  		}
  	</script>
  </body> 
</html>
