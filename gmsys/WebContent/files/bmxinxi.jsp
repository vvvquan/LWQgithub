<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="../files/addbm.jsp";
   document.getElementById("fom").submit();
}
/*批量删除*/
function del(){
	var obj = document.fom.elements;
	var  paramUrl="";
	for (var i=0;i<obj.length;i++){
		if (obj[i].name=="delid"&&obj[i].checked ==true){
			paramUrl+=obj[i].value+":";
			
		}
	}
	if(paramUrl==""){
		alert("请删除要选中的项目");
		return;
	}
	if(paramUrl=="1:"||paramUrl=="2:"||paramUrl=="1:2:"){
		alert("这个外键删不了 ，别删了，删其他的吧");
		return;
	}
	document.getElementById("fom").action="${pageContext.request.contextPath}/department/delete.do?cid="+paramUrl;
	/* console.log("${pageContext.request.contextPath}/category/delete.action?cid="+paramUrl);
	document.location.href="${pageContext.request.contextPath}/category/delete.do?cid="+paramUrl; */
	
	
}

</SCRIPT>
<body data-type="index">


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo" style="margin-top: 30px;">
                <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="">
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right" style="margin-top: 35px;">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">5</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-success">5</span> 条提醒</h3><a href="###">全部</a></li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span> 【预览模块】移动端 查看时 手机、电脑框隐藏。</a>
                            <span class="tpl-dropdown-list-fr">3小时前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 移动端，导航条下边距处理</a>
                            <span class="tpl-dropdown-list-fr">15分钟前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 追加统计代码</a>
                            <span class="tpl-dropdown-list-fr">2天前</span>
                        </li>
                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">9</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-danger">9</span> 条新消息</h3><a href="###">全部</a></li>
                        <li>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user02.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> 禁言小张 </span>
                                <span class="tpl-dropdown-content-time">10分钟前 </span>
                                </span>
                                <span class="tpl-dropdown-content-font"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </span>
                            </a>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user03.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> Steam </span>
                                <span class="tpl-dropdown-content-time">18分钟前</span>
                                </span>
                                <span class="tpl-dropdown-content-font"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-calendar"></span> 进度 <span class="am-badge tpl-badge-primary am-round">4</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-primary">4</span> 个任务进度</h3><a href="###">全部</a></li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">Amaze UI 用户中心 v1.2 </span>
                                <span class="percent">45%</span>
                                </span>
                                <span class="progress">
                        <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-success" style="width:45%"></div></div>
                    </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">新闻内容页 </span>
                                <span class="percent">30%</span>
                                </span>
                                <span class="progress">
                       <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-secondary" style="width:30%"></div></div>
                    </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">管理中心 </span>
                                <span class="percent">60%</span>
                                </span>
                                <span class="progress">
                        <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-warning" style="width:60%"></div></div>
                    </span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">用户id</span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                        <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>







    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                Amaze UI 列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-home"></i>
                            <span>基础数据管理</span>
			    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
			<ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="${pageContext.request.contextPath}/category/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产分类设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/department/findAll.do" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>部门设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="../files/addzc.jsp">
                                     <i class="am-icon-angle-right"></i>
                                        <span>资产录入</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                <a href="../area/list.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>区域管理</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>资产管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
    			<ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/buy/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>盘点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll2.do">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll3.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修管理</span>
                                </a>
								<a href="${pageContext.request.contextPath}/buyProuduct/findAll4.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废管理</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>使用统计</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/balance/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产总数</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/cgjl/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购记录</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="${pageContext.request.contextPath}/tpjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配记录</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
                                <a href="${pageContext.request.contextPath}/bxjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修记录</span>
                                </a>
								<a href="${pageContext.request.contextPath}/bfjl/findAll.do">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废记录</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>供应商管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/provider/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>供应商信息查看</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/product/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>产品信息查看</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="login.html" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>登录</span>

                        </a>
                    </li>
                </ul>
            </div>
        </div>




<%--内容 --%>
        <div class="tpl-content-wrapper">
            <form name="fom" id="fom" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
						   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
							  <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
							  <td width="519"><label>部门编号:
							      <input name="text" type="text" nam="gongs" />
							  </label>
							    </input>
							    <input name="Submit" type="button" class="right-button02" value="查 询" /></td>
							   <td width="679" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>	
						    </tr>
				          </table></td>
				        </tr>
				    </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				          	 <tr>
				               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
						           <input name="Submit" type="submit" class="right-button08" value="删除所选部门信息" onclick="del();" /> <input name="Submit" type="button" class="right-button08" value="添加部门信息" onclick="link();" />
						           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					              </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
									                  <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部门详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
								    <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">部门编号</td>
									 <td width="12%" height="20" align="center" bgcolor="#EEEEEE">部门名称</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">所属区域</td>
				                    
				                    
				                    
				                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				                  </tr>
				                  <c:forEach items="${listDepartment}" var="c">
				                  <tr>
				                    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid" value="${c.departid}"/></td>
				                     <td bgcolor="#FFFFFF">${c.departid}</td>
				                    <td height="20" bgcolor="#FFFFFF">${c.departname}</td>
				                      <td height="20" bgcolor="#FFFFFF">${c.areaname}</td>
				                    
				                    <td bgcolor="#FFFFFF"><a href="${pageContext.request.contextPath}/department/findById.do?departid=${c.departid}">编辑</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/department/findByIdchakan.do?departid=${c.departid}">查看</a></td>
				                  </tr>
				               </c:forEach>
				                  
				                </table></td>
				              </tr>
				            </table></td>
				        </tr>
				      </table>
				      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				        <tr>
				          <td height="6"><img src="../images/spacer.gif" width="1" height="1" /></td>
				        </tr>
				        <tr>
				          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				              <tr>
				                <td width="50%">共 <span class="right-text09">5</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="#" class="right-font08">首页</a> | <a href="#" class="right-font08">上一页</a> | <a href="#" class="right-font08">下一页</a> | <a href="#" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="textfield3" type="text" class="right-textfield03" size="1" /></td>
				                      <td width="87%"><input name="Submit23222" type="submit" class="right-button06" value=" " />
				                      </td>
				                    </tr>
				                </table></td>
				              </tr>
				          </table></td>
				        </tr>
				      </table></td>
				  </tr>
				</table>
				</form>
            



        </div>


    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>

</html>