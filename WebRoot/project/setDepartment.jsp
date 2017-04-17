<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setProject.jsp' starting page</title>
    <link rel="stylesheet" href="css/ext-all.css" />
    <script type="text/javascript" src="js/ext-base.js"></script>
    <script type="text/javascript" src="js/ext-all.js"></script>
    <style>
    	*{margin:0px;padding:0px;}
    	.left{width:20%;height:500px;float:left;margin:50px 30px;padding:30px;}
    	.center{width:20px;height:500px;float:left;margin:50px 0 0 0;background:#eaeaea;}
    	.right{width:60%;height:80px;float:left;margin:100px 0 0 50px;}
    	.right .title{display:block;width:100%;height:30px;line-height:30px;text-align:center;font-family:"微软雅黑";}
    	.right .setDept{height:70px;width:100%;background-color: #eaeaea;border:1px solid blue;}
    </style>
  </head>
  
  <body>
    <div class="left">
  		<div id="tree_div"></div>
  	</div>
  	<div class="center"></div>
  	<div class="right">
  		<span class="title">项目设置部门</span>
  		<div class="setDept">
  			<form action="" method="post">
  				<table border="1" cellspacing="0" cellpadding="0" align="center" style="width: 100%" bordercolor="#fff">
    				<tr align="center">
    					<td>部门名称</td>
    					<td style="width: 35%">
    						<input type="text" name="dept_name" id="dept_name" style="width:100%"/>
    						<input type="hidden" name="p_id" id="p_id" value="${p_id }" />
    					</td>
    					<td colspan="4">
    						<input type="button" value="配置部门" onclick="project_setDept()"/>
    						<input type="button" value="取消部门" onclick="project_delDept()"/>
    						<input type="button" value="返回" onclick="toProjectMain()"/>
    					</td>
    				</tr>
    			</table>
  			</form>
  		</div>
  	</div>
  </body>
  <script>
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
					document.getElementById("dept_name").value=node.text;
				}
			});
		});
		tree.render(Ext.get("tree_div"));
	});
	var xmlHttp;
	function project_setDept(){
		var dept_name = document.getElementById("dept_name").value;
		var p_id = document.getElementById("p_id").value;
		if(dept_name.length==0){
			alert("部门名称不能为空");
			document.getElementById("dept_name").focus();
		}else{
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXobject();
			}
			xmlHttp.open("post","servlet/ProjectSetDeptServlet",true);
			xmlHttp.onreadystatechange = callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dept_name="+dept_name+"&p_id="+p_id+"&flagAdd=true");
		}
	}
	function callback(){
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				var text = xmlHttp.responseText;
				alert(text);
			}
		}
	}
	function project_delDept(){
		var dept_name = document.getElementById("dept_name").value;
		var p_id = document.getElementById("p_id").value;
		if(dept_name.length==0){
			alert("部门名称不能为空");
			document.getElementById("dept_name").focus();
		}else{
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXobject();
			}
			xmlHttp.open("post","servlet/ProjectDelDeptServlet",true);
			xmlHttp.onreadystatechange = callback;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dept_name="+dept_name+"&p_id="+p_id);
		}
	}
	function toProjectMain(){
		window.location.href="servlet/ProjectGetAllByPageServlet";
	}
  </script>
</html>
