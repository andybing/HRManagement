<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setPeople_manager.jsp' starting page</title>
    <style>
    	.manager{width:80%;height:80px;border:1px solid blue;margin:20px auto;}
    	.manager .m_title{width:100%;height:40px;background-color: #d0ffff;
    		text-align:center;line-height:40px;font-family:"微软雅黑";font-size:14px;font-weight:bold;}
    	.manager .department{text-align:center;height:40px;width:100%;line-height:40px;}
    	.manager .department .d_dept{width:100px;height:40px;margin-right:80px;}
    	.selectPeople{width:80%;height:80px;border:1px solid blue;margin:20px auto;}
    	.selectPeople .s_title{width:100%;height:40px;background-color: #d0ffff;
    		text-align:center;line-height:40px;font-family:"微软雅黑";font-size:14px;font-weight:bold;}
    	.selectPeople .department{text-align:center;line-height:40px;}
    	.selectedPeople{width:80%;height:80px;border:1px solid blue;margin:20px auto;}
    	.selectedPeople .s_title{width:100%;height:40px;background-color: #d0ffff;
    		text-align:center;line-height:40px;font-family:"微软雅黑";font-size:14px;font-weight:bold;}
    	.selectedPeople .department{text-align:center;line-height:40px;}
    </style>
  </head>
  
  <body onload="getAllDept()">
    <div class="manager">
    	<div class="m_title">添加财务负责人</div>
    	<div class="department">
    		<span class="d_dept"><font color="#000" style="font-size:14px;font-weight:bold;">部门</font></span>
    		<select style="width:30%;margin-left:-30px;" id="departments" onchange="showPeople()"></select>
    	</div>
    </div>
    <div class="selectPeople">
    	<div class="s_title">选择人员</div>
    	<div class="department">
    		<select style="width:30%;margin-top:10px;" id="people" onchange="selectPeople()"></select>
    	</div>
    </div>
    <div class="selectedPeople">
    	<div class="s_title">已选人员<input type="text" name="p_id" value="${p_id }" id="p_id"/></div>
    	<div class="department" id="aPeo">
    		
    	</div>
    </div>
    
    <script>
    	var xmlHttp;
		function getAllDept(){
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest;
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			xmlHttp.open("get", "servlet/DepartmentGetAllNameServlet", true);
			xmlHttp.onreadystatechange = callback;
			//xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send(null);
		}
		function callback(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					var departmentSelect = document.getElementById("departments");
					var text = xmlHttp.responseText;
					var departments = text.split('-');
					for(var i = 0;i<departments.length-1;i++){
						departmentSelect.options[i] = new Option(departments[i]);
					}
					xmlHttp.open("post","servlet/DepartmentGetAllPeopleServlet",true);
					xmlHttp.onreadystatechange = showPeopleOptions;
					xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
					xmlHttp.send("dept_name="+departments[0]);
				}
			}
		}
		function callback_peo(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					//alert(xmlHttp.responseText);
				}
			}
		}
		function showPeople(){
			var dept_name = null;
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest;
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			var departments = document.getElementById("departments").options;
			for(var i = 0;i<departments.length;i++){
				if(departments[i].selected){
					dept_name = departments[i].value;
				}	
			}
			xmlHttp.open("post", "servlet/DepartmentGetAllPeopleServlet", true);
			xmlHttp.onreadystatechange = showPeopleOptions;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("dept_name="+dept_name);
		}
		var people_name = null;
		function showPeopleOptions(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status = 200){
					var names = xmlHttp.responseText;
					var nameOptions = names.split('-');
					for(var i =0;i<nameOptions.length-1;i++){
						document.getElementById("people").options[i] = new Option(nameOptions[i]);
					}
					people_name = nameOptions[0];
					document.getElementById("aPeo").innerHTML = people_name+"<input type=\"button\" value=\"设置\" style=\"margin-left:30px\" onclick=\"projectSetPeo()\"/>";
				} 
			}
		}
		function selectPeople(){
			var people = document.getElementById("people").options;
			for(var i =0;i<people.length;i++){
				if(people[i].selected){
					people_name =  people[i].value;
					document.getElementById("aPeo").innerHTML = people_name+"<input type=\"button\" value=\"设置\" style=\"margin-left:30px\" onclick=\"projectSetPeo()\"/>";
				}
			}
		}
		function projectSetPeo(){
			
			window.opener.document.getElementById("caiwu").value=people_name;
			window.close();
			/*var p_id = document.getElementById("p_id").value;
			//alert(p_id);
			if(window.XMLHttpRequest){
				xmlHttp = new XMLHttpRequest;
			}else if(window.ActiveXObject){
				xmlHttp = new ActiveXObject();
			}
			xmlHttp.open("post", "servlet/ProjectSetPeopleServlet", true);
			xmlHttp.onreadystatechange = showMessage;
			xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			xmlHttp.send("people_name="+people_name+"&p_id="+p_id+"&flagAdd=true");*/
		}
		function showMessage(){
			if(xmlHttp.readyState == 4){
				if(xmlHttp.status == 200){
					alert(xmlHttp.responseText);
				}
			}
		}
    </script>
  </body>
</html>
