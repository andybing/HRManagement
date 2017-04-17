<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆界面</title>
	<link type="text/css" href="images/public.css"></link>
	<style>
		body{padding:0px;margin:0px;background-color:#3C5B7B;}
		.login{width:60%;height:40%;margin:100px auto;padding-top:200px;
			background-image: url("images/login_main.png");background-repeat: no-repeat;}
		.login .l_form{width:420px;height:170px;margin-left:320px;}
		table tr td{padding-top:15px;}
	</style>
  </head>
  
  <body>
    <div class="login">
    	<div class="l_form">
    		<form action="" method="post">
    		<table border="0" cellpadding="0" cellspacing="0" style="width:100%;margin:10px 0 0 0;">
    			<tr>
    				<td style="width:18%;"><font color="#fff">用户名:</font></td>
    				<td style="width:100%"><input type="text" style="width:60%" id="name" name="name"/></td>
    			</tr>
    			<tr style="margin-top:100px;">
    				<td style="width:18%"><font color="#fff"> 密码:</font></td>
    				<td style="width:100%"><input type="password" style="width:60%" id="password" name="password"/></td>
    			</tr>
    			<tr style="margin-top:100px;">
    				<td style="width:18%"><font color="#fff"> 验证码:</font></td>
    				<td style="width:100%"><input type="password" style="width:50%" id="code" name="code"/><img src="images/default.gif"/>
    					<a href="javascript:void(0)" style="font-size:14px;">看不清,换一张</a>
    				</td>
    			</tr>
    			<tr style="margin-top:100px;">
    				<td align="center" colspan="2">
    				<input type="button" value="登陆" onclick=" return validate()"
    				style="width:90px;height:25px;font-size:15px;background:#fff;border:0;margin-right:5px;"/>
    				
    				<input type="button" value="注册" 
    				style="width:90px;height:25px;font-size:15px;background:#fff;border:0;margin-right:5px;"/></td>
    			</tr>
    		</table>
    		</form>
    	</div>
    </div>
	<script>
		var xmlHttp;
		function validate(){
			var name = document.getElementById("name").value;
			if(name.length<=0){
				alert("用户名不能为空");
				document.getElementById("name").focus();
				return false;
			}
			var password = document.getElementById("password").value;
			if(password.length <= 0){
				alert("密码不能为空");
				document.getElementById("password").focus();
				return false;
			}
			var code = document.getElementById("code").value;
			if(code.length<=0){
				alert("验证码不能为空");
				document.getElementById("code").focus();
				return false;
			}
			//document.location.href="main.jsp";
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest();
		  	}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
		  	}
		  	xmlHttp.open("post", "servlet/UserLoginServlet", true);
		  	xmlHttp.onreadystatechange=callback;
		  	xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		  	xmlHttp.send("name="+name+"&password="+password);
	  	}
		function callback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					var text = xmlHttp.responseText;
					if("yes" == text){
						document.location.href="main.jsp";
					}else if("no" == text){
						alert("密码不正确,登陆失败");
					}
				}
			}
		}
		
	</script>
  </body>
</html>
