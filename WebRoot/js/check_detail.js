function modify(index)
{
	var states=document.getElementsByName("state");
	var flag=null;
	for(var i=0;i<states.length;i++)
	{
		if(states[i].checked)
		{
			flag=states[i].value;
		}
	}
	if("unpass"==flag)
	{
		window.opener.document.getElementById(index+"_state").innerHTML="<font color='red'>未通过</font>";
	}
	else
	{
		window.opener.document.getElementById(index+"_state").innerHTML="已通过";
	}
	window.close();
}

function back()
{
	window.close();
}
function init(index)
{
	var name=window.opener.document.getElementById(index+"_name").innerText;
	var date=window.opener.document.getElementById(index+"_date").innerText;
	var workload=window.opener.document.getElementById(index+"_workload").innerText;
	var overtime=window.opener.document.getElementById(index+"_overtime").innerText;
	var project=window.opener.document.getElementById(index+"_project").innerText;
	var stage=window.opener.document.getElementById(index+"_stage").innerText;
	var content=window.opener.document.getElementById(index+"_content").innerText;
	document.getElementById("name").value=name;
	document.getElementById("date").value=date;
	document.getElementById("workload").value=workload;
	document.getElementById("overtime").value=overtime;
	document.getElementById("project").value=project;
	document.getElementById("stage").value=stage;
	document.getElementById("content").value=content;
	
}