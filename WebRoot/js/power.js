// JavaScript Document
function ma()
{
	
	var winObj1=window.open("user_information.jsp","详细信息","height=250,width=600");
	winObj1.moveTo(0,0);
	winObj1.focus();
}
function mb()
{
	var winObj2=window.open("user_update.jsp","修改信息","height=250,width=900");
	winObj2.moveTo(0,0);
	winObj2.focus();
}
function mc()
{
	confirm("是否删除该用户信息？");
}
function md()
{
	alert("修改成功！");	
}
function me()
{
	var winObj3=window.open("user_updatePassword.jsp","修改密码","height=250,width=900");
	winObj3.moveTo(0,0);
	winObj3.focus();
}
function mf()
{
	var winObj4=window.open("user/user_register.jsp","添加用户","height=250,width=900");
	winObj4.moveTo(0,0);
	winObj4.focus();
}