<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a{text-decoration:none;color:#033d61;}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>
<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>


<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="images/main_40.gif">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      		<tr>
        		<td width="19%">&nbsp;</td>
        		<td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      		</tr>
    	</table>
    </td>
  </tr>
  <tr>
    <td valign="top">
    	<table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
     	<tr>
        	<td>
        	<table width="100%" border="0" cellspacing="0" cellpadding="0">
          	<tr>
            	<td height="23" background="images/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:hand">
            	<table width="100%" border="0" cellspacing="0" cellpadding="0">
              		<tr>
                		<td width="18%">&nbsp;</td>
                		<td width="82%" class="STYLE1">日报管理</td>
              		</tr>
            	</table>
            	</td>
          	</tr>
          	<tr>
            	<td background="images/main_51.gif" id="submenu1">
			 	<div class="sec_menu" />  
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
              		<tr>
                		<td>
                		<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  			<tr>
                    			<td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    			<td width="84%" height="23">
                    			<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        			<tr>
                          				<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报查询</span></td>
                        			</tr>
                    			</table>
                    			</td>
                  			</tr>
                  			<tr>
                    			<td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                    			<td height="23">
                    			<table width="95%" border="0" cellspacing="0" cellpadding="0">
                        			<tr>
                          				<td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">新增日报</span></td>
                        			</tr>
                    			</table>
                    			</td>
                 			</tr>
                 
                		</table>
                		</td>
              		</tr>
              		<tr>
                		<td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
              		</tr>
            	</table>
            	</div>
            	</td>
          	</tr>
          
       		</table>
       	</td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">日报设定</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu2"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="prp/prp_main.jsp" target="Iright">PRP阶段设定</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="department/department_main.jsp" target="Iright">职能部门设定</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="project/project_main.jsp" target="Iright">项目设定</a></span></td>
                              </tr>
                          </table></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="images/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">日报登陆</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu3" style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报管理</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><span class="STYLE3">新增日报</span></td>
                              </tr>
                          </table></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
      
      
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="23" background="images/main_47.gif" id="imgmenu4" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(4)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">日报审核</td>
                </tr>
            </tbody></table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu4" style="display: none;"><div class="sec_menu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><a href="dailyreport/daily_report_check.jsp" target="Iright">审核日报</a></span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报审核</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                    </tbody></table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5"></td>
                  </tr>
                </tbody></table>
            </div></td>
          </tr>
        </tbody></table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="23" background="images/main_47.gif" id="imgmenu5" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(5)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">日报查询统计</td>
                </tr>
            </tbody></table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu5" style="display: none;"><div class="sec_menu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3"><a href="personal_daily_report_query/report_query_date.jsp" target="Iright">个人日报查询-按日期</a></span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3"><a href="personal_daily_report_query/report_query_project.jsp" target="Iright">个人日报查询－按项目</a></span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">未写/未审核日报查询</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">项目工作量查询</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">部门工作量查询</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">某日日报记录</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">个人周报导出</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">部门工作量导出</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'">
                                <span class="STYLE3">个人日报查询－按项目组</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                    </tbody></table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5"></td>
                  </tr>
                </tbody></table>
            </div></td>
          </tr>
        </tbody></table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="23" background="images/main_47.gif" id="imgmenu6" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(6)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">系统菜单及权限</td>
                </tr>
            </tbody></table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu6" style="display: none;"><div class="sec_menu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报信息菜单</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报管理菜单</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报统计菜单</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3"><tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">日报统计菜单</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr></span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                    </tbody></table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5"></td>
                  </tr>
                </tbody></table>
            </div></td>
          </tr>
        </tbody></table></td>
      </tr>
      
       <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="23" background="images/main_47.gif" id="imgmenu7" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(7)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">日报提醒</td>
                </tr>
            </tbody></table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu7" style="display: none;"><div class="sec_menu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">填写日报提醒</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">审批日报提醒</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                    </tbody></table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5"></td>
                  </tr>
                </tbody></table>
            </div></td>
          </tr>
        </tbody></table></td>
      </tr>
      
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tbody><tr>
            <td height="23" background="images/main_47.gif" id="imgmenu8" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(8)" onmouseout="this.className='menu_title';" style="cursor:hand"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">客户信息维护</td>
                </tr>
            </tbody></table></td>
          </tr>
          <tr>
            <td background="images/main_51.gif" id="submenu8" style="display: none;"><div class="sec_menu">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                          <td width="16%" height="25"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">用户信息维护</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">密码修改</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                         <tr>
                          <td height="23"><div align="center"><img src="images/left.gif" width="10" height="10"></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tbody><tr>
                                <td height="20" style="cursor:hand" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; " onmouseout="this.style.borderStyle='none'"><span class="STYLE3">设置/修改员工密码</span></td>
                              </tr>
                          </tbody></table></td>
                        </tr>
                    </tbody></table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="images/main_52.gif" width="151" height="5"></td>
                  </tr>
                </tbody></table>
            </div></td>
          </tr>
        </tbody></table></td>
      </tr>
      
      
      
    </table></td>
  </tr>
  <tr>
    <td height="18" background="images/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：2008V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
<script>
	function showsubmenu(sid)
	{
		whichEl = eval("submenu" + sid);
		imgmenu = eval("imgmenu" + sid);
		if (whichEl.style.display == "none")
		{
			eval("submenu" + sid + ".style.display=\"\";");
			imgmenu.background="images/main_47.gif";
		}
		else
		{
			eval("submenu" + sid + ".style.display=\"none\";");
			imgmenu.background="images/main_48.gif";
		}
	}
	

</script>