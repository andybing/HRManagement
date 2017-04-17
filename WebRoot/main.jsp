<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>企业信息管理系统</title>
	</head>
	<%
		String userName = (String)request.getSession().getAttribute("userName");
		if(userName == null){
			response.sendRedirect("login.jsp");
		}
	%>
	<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
		<frame src="top.jsp" name="topFrame" scrolling="No"
			noresize="noresize" id="topFrame" />
		<frame src="center.jsp" name="mainFrame" id="mainFrame" />
		<frame src="down.jsp" name="bottomFrame" scrolling="No"
			noresize="noresize" id="bottomFrame" />
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>
