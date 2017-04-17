function pass()
{
	var selects=document.getElementsByName("select");
	var count=0;
	for(var i=0;i<selects.length;i++)
	{
		if(selects[i].checked)
		{
			count++;
		}
	}
	if(count==0)
	{
		alert("请选择记录")
	}
	for(var i=0;i<selects.length;i++)
	{
		if(selects[i].checked)
		{
		var td=document.getElementById(selects[i].value+"_state");
		td.innerHTML="已通过";
		}
		selects[i].checked=false;
	}
	document.getElementById("all").checked=false;
}
function unpass()
{
	var selects=document.getElementsByName("select");
	var count=0;
	for(var i=0;i<selects.length;i++)
	{
		if(selects[i].checked)
		{
			count++;
		}
	}
	if(count==0)
	{
		alert("请选择记录")
	}
	for(var i=0;i<selects.length;i++)
	{
		if(selects[i].checked)
		{
		var td=document.getElementById(selects[i].value+"_state");
		td.innerHTML="<font color='red'>未通过</font>";
		}
		selects[i].checked=false;
	}
	document.getElementById("all").checked=false;
}

function selectall()
{
	var array=document.getElementsByName("select");
	for(var i=0;i<array.length;i++)
	{
		array[i].checked=document.getElementById("all").checked;
	}
}