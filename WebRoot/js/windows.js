function open1(){
	var winobj=window.open("ManageDaynews/windows.jsp", "window", "height=500,width=500,scrollbars=no");
	winobj.focus();
}
function delete1(){
	confirm("确认删除么？");
	
}
function close1(){
 
	window.close();
}
function insert1(){
	location.href="ManageDaynews/insert.jsp";
}
function return1(){
	location.href="ManageDaynews/select.jsp";
}
function return2(){
	location.href="ManageDaynews/select.jsp";
}