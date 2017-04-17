<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
	*{margin:0px;padding:0px;}
	.c_menu{font-size:12px;color:#033D61;margin-left:10px;}
	.left{width:165px;height:100%;}
	.left .title{width:100%;height:28px;background-color: #41C3E3;background-image: url(images/main_40.gif);line-height:28px;}
	.left .title .t_font{font-size:12px;color:#fff;margin-left:35px;}
	.left .menu{width:151px;height:90%;margin:2px auto;}
	.left .menu ul li{list-style:none;display:block;width:100%;height:24px;
		background-image: url(images/main_47.gif);font-size:12px;color:#fff;cursor:pointer;}
	.left .menu ul li p{line-height:20px;margin-left:30px;}
	.left .menu .childMenu_1{border:1px solid #95D6E4;width:100%;height:50px;display:none;}
	.left .menu .childMenu_1 .c_menu_1{width:100%;height:20px;margin:3px 0 0 20px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_1 .c_menu_1 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_1 .c_menu_1 a:hover{color:#000;}
	
	.left .menu .childMenu_2{border:1px solid #95D6E4;width:100%;height:70px;display:none;}
	.left .menu .childMenu_2 .c_menu_2{width:100%;height:20px;margin:3px 0 0 20px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_2 .c_menu_2 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_2 .c_menu_2 a:hover{color:#000;}
	
	.left .menu .childMenu_3{border:1px solid #95D6E4;width:100%;height:50px;display:none;}
	.left .menu .childMenu_3 .c_menu_3{width:100%;height:20px;margin:3px 0 0 20px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_3 .c_menu_3 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_3 .c_menu_3 a:hover{color:#000;}
	
	.left .menu .childMenu_4{border:1px solid #95D6E4;width:100%;height:260px;display:none;}
	.left .menu .childMenu_4 .c_menu_4{width:100%;height:20px;margin:3px 0 0 15px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_4 .c_menu_4 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_4 .c_menu_4 a:hover{color:#000;}
	
	.left .menu .childMenu_5{border:1px solid #95D6E4;width:100%;height:70px;display:none;}
	.left .menu .childMenu_5 .c_menu_5{width:100%;height:20px;margin:3px 0 0 20px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_5 .c_menu_5 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_5 .c_menu_5 a:hover{color:#000;}
	
	.left .menu .childMenu_6{border:1px solid #95D6E4;width:100%;height:50px;display:none;}
	.left .menu .childMenu_6 .c_menu_6{width:100%;height:20px;margin:3px 0 0 20px;line-height:20px;cursor:pointer;}
	.left .menu .childMenu_6 .c_menu_6 a{text-decoration:none;color:#033D61;}
	.left .menu .childMenu_6 .c_menu_6 a:hover{color:#000;}
</style>

<div class="left">
	<div class="title"><font class="t_font">管理菜单</font></div>
	<div class="menu">
		<ul>
			<li onclick="showChild_1()">
				<p>日报管理</p>
			</li>
			<div class="childMenu_1" id="childMenu_1">
				<div class="c_menu_1"><img src="images/left.gif" /><font class="c_menu"><a href="ManageDaynews/select.jsp" target="Iright">日报查询</a></font></div>
				<div class="c_menu_1"><img src="images/left.gif" /><font class="c_menu"><a href="">新增日报</a></font></div>
			</div>
			<li onclick="showChild_2()"><p>日报设定</p></li>
			<div class="childMenu_2" id="childMenu_2">
				<div class="c_menu_2"><img src="images/left.gif" /><font class="c_menu"><a href="servlet/PrpGetAllByPageServlet" target="Iright">PRP阶段设定</a></font></div>
				<div class="c_menu_2"><img src="images/left.gif" /><font class="c_menu"><a href="department/department_main.jsp" target="Iright">职能部门设定</a></font></div>
				<div class="c_menu_2"><img src="images/left.gif" /><font class="c_menu"><a href="servlet/ProjectGetAllByPageServlet" target="Iright">项目设定</a></font></div>
			</div>
			<li onclick="showChild_3()"><p>日报审核</p></li>
			<div class="childMenu_3" id="childMenu_3">
				<div class="c_menu_3"><img src="images/left.gif" /><font class="c_menu"><a href="dailyreport/daily_report_check.jsp" target="Iright">审核日报</a></font></div>
				<div class="c_menu_3"><img src="images/left.gif" /><font class="c_menu"><a href="">日报审核</a></font></div>
			</div>
			<li onclick="showChild_4()"><p>日报查询统计</p></li>
			<div class="childMenu_4" id="childMenu_4">
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="personal_daily_report_query/report_query_date.jsp" target="Iright">个人日报查询-日期</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="personal_daily_report_query/report_query_project.jsp" target="Iright">个人日报查询-项目</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="">个人日报查询-项目组</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/personDaily.jsp" target="Iright">个人未写日报查询</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/departmentDaily.jsp" target="Iright">未写日报查询</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/departmentcheck.jsp" target="Iright">未审核日报查询</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/proInputSerchbyDept.jsp" target="Iright">项目工作量查询</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/departInputCollect.jsp" target="Iright">部门工作量查询</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="">某日日报记录</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="">个人周报导出</a></font></div>
				<div class="c_menu_4"><img src="images/left.gif" /><font class="c_menu"><a href="depart/proInputSerchbymile.jsp" target="Iright">部门投入汇总</a></font></div>
			</div>
			<li onclick="showChild_5()"><p>系统菜单及权限</p></li>
			<div class="childMenu_5" id="childMenu_5">
				<div class="c_menu_5"><img src="images/left.gif" /><font class="c_menu"><a href="">日报信息菜单</a></font></div>
				<div class="c_menu_5"><img src="images/left.gif" /><font class="c_menu"><a href="">日报管理菜单</a></font></div>
				<div class="c_menu_5"><img src="images/left.gif" /><font class="c_menu"><a href="">日报统计菜单</a></font></div>
			</div>
			<li onclick="showChild_6()"><p>客户信息维护</p></li>
			<div class="childMenu_6" id="childMenu_6">
				<div class="c_menu_6"><img src="images/left.gif" /><font class="c_menu"><a href="user/user_power.jsp" target="Iright">用户信息维护</a></font></div>
				<div class="c_menu_6"><img src="images/left.gif" /><font class="c_menu"><a href="user/user_updatePassword.jsp" target="Iright">密码修改</a></font></div>
			</div>
		</ul>
	</div>
</div>
<script>
	function showChild_1(){
		var childMenu_1 = document.getElementById("childMenu_1");
		if(childMenu_1.style.display==""){
			childMenu_1.style.display="block";
		}else if(childMenu_1.style.display=="block"){
			childMenu_1.style.display="";
		}
	}
	function showChild_2(){
		var childMenu_2 = document.getElementById("childMenu_2");
		if(childMenu_2.style.display==""){
			childMenu_2.style.display="block";
		}else if(childMenu_2.style.display=="block"){
			childMenu_2.style.display="";
		}
	}
	function showChild_3(){
		var childMenu_3 = document.getElementById("childMenu_3");
		if(childMenu_3.style.display==""){
			childMenu_3.style.display="block";
		}else if(childMenu_3.style.display=="block"){
			childMenu_3.style.display="";
		}
	}
	function showChild_4(){
		var childMenu_4 = document.getElementById("childMenu_4");
		if(childMenu_4.style.display==""){
			childMenu_4.style.display="block";
		}else if(childMenu_4.style.display=="block"){
			childMenu_4.style.display="";
		}
	}
	function showChild_5(){
		var childMenu_5 = document.getElementById("childMenu_5");
		if(childMenu_5.style.display==""){
			childMenu_5.style.display="block";
		}else if(childMenu_5.style.display=="block"){
			childMenu_5.style.display="";
		}
	}
	function showChild_6(){
		var childMenu_6 = document.getElementById("childMenu_6");
		if(childMenu_6.style.display==""){
			childMenu_6.style.display="block";
		}else if(childMenu_6.style.display=="block"){
			childMenu_6.style.display="";
		}
	}
</script>