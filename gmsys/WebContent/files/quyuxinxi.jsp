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
	window.open("<%=path%>/files/gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "areaid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "areaid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}


function deleteArea(){
	
	if(confirm("确定删除？")){
	   document.getElementById("fom").action="../area/delete.do";
	   document.getElementById("fom").submit();
	}
}

function link(){
  //  document.getElementById("fom").action="addquyu.htm";
   //document.getElementById("fom").submit();
   location.href="<%=path%>/files/addquyu.htm"
}

</SCRIPT>
<body data-type="index">
<%@include file="head.jsp" %>
		
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
			<ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/category/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产分类设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/department/findAll.do">
                                    <i class="am-icon-angle-right"></i>
                                    <span>部门设置</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="../files/addzc.jsp">
                                     <i class="am-icon-angle-right"></i>
                                        <span>资产录入</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/area/list.do" class="active">
                                     <i class="am-icon-angle-right"></i>
                                     <span>区域管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-primary"></i>
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
    			<ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="${pageContext.request.contextPath}/buy/findAll.do?pageNow=1">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll.do?pageNow=1">
                                    <i class="am-icon-angle-right"></i>
                                    <span>盘点管理</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll2.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buyProuduct/findAll3.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修管理</span>
                                </a>
								<a href="${pageContext.request.contextPath}/buyProuduct/findAll4.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废管理</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
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
                                <a href="${pageContext.request.contextPath}/balance/findAll.do?pageNow=1">
                                    <i class="am-icon-angle-right"></i>
                                    <span>资产总数</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/buy/findAll.do?pageNow=1">
                                    <i class="am-icon-angle-right"></i>
                                    <span>采购记录</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="${pageContext.request.contextPath}/Tpjl/findAll.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                        <span>跨部门调配记录</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
                                <a href="${pageContext.request.contextPath}/Bxjl/findAll.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报修记录</span>
                                </a>
								<a href="${pageContext.request.contextPath}/Bfjl/findAll.do?pageNow=1">
                                     <i class="am-icon-angle-right"></i>
                                     <span>报废记录</span>
                                     <i class="tpl-left-nav-content tpl-badge-success"></i>
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
                                <a href="${pageContext.request.contextPath}/provider/findAll.do?pageNow=1">
                                    <i class="am-icon-angle-right"></i>
                                    <span>供应商信息查看</span>
                                    <i class="tpl-left-nav-content tpl-badge-success"></i>
                                </a>
                                <a href="${pageContext.request.contextPath}/product/findAll.do?pageNow=1">
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
            <form name="fom" id="fom" action="../area/list.do" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				
				  <tr>
				    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
				        <tr>
				          <td height="62" background="../images/nav04.gif">
				            
						   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
						    <tr>
							  <td width="24"><img src="../images/ico07.gif" width="20" height="18" /></td>
							  <!-- <td width="519"><label>区域编号:
							      <input name="text" type="text" nam="gongs" />
							  </label>
							    </input>
							    <input name="Submit" type="button" class="right-button02" value="查 询" /></td> -->
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
						           <input type="button" class="right-button08" onclick="deleteArea();" value="删除所选区域信息" /> <input name="Submit" type="button" class="right-button08" value="添加区域信息" onclick="link();" />
						           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					              </td>
				          </tr>
				              <tr>
				                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				
									                  <tr>
				                    <td height="20" colspan="14" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;区域详细列表 &nbsp;</td>
				                    </tr>
				                  <tr>
								    <td width="8%" align="center" bgcolor="#EEEEEE">选择</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">区域编号</td>
									 <td width="12%" height="20" align="center" bgcolor="#EEEEEE">区域名称</td>
				            <td width="12%" height="20" align="center" bgcolor="#EEEEEE">上级关联</td>
				                    
				                    
				                    <td width="11%" align="center" bgcolor="#EEEEEE">操作</td>
				                  </tr>
				                  
				                  <!-- 使用jsp的标签技术显示数据，areaList是在控制器中保存数据的键名，area是一个临时的名称，它可以在循环中获取数据 -->
				                  <c:forEach items="${areaList}" var="area">
				                   <tr>
								      <td bgcolor="#FFFFFF"><input type="checkbox" name="areaid" value="${area.areaid}"/></td>
				                    <td bgcolor="#FFFFFF">${area.areaid}</td>
									          <td height="20" bgcolor="#FFFFFF">${area.areaname }</td>
				                    <td height="20" bgcolor="#FFFFFF">${area.relative==0?"集团":area.parent.areaname}</td>
									          <td bgcolor="#FFFFFF"><a href="<%=path%>/files/updatequyu.htm">编辑</a>&nbsp;|&nbsp;<a href="<%=path%>/files/quyudetails.html">查看</a></td>
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
				                <td width="50%">共 <span class="right-text09">1</span> 页 | 第 <span class="right-text09">1</span> 页</td>
				                <td width="49%" align="right">[<a href="${pageContext.request.contextPath}/area/list.do?page=1" class="right-font08">首页</a> | <a href="${pageContext.request.contextPath}/area/list.do?page=${pager.prePage}" class="right-font08">上一页</a> | <a href="../area/list.do?page=${pager.nextPage}" class="right-font08">下一页</a> | <a href="../area/list.do?page=${pager.pages}" class="right-font08">末页</a>] 转至：</td>
				                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
				                    <tr>
				                      <td width="1%"><input name="page" type="text" class="right-textfield03" size="1" /></td>
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

	</div>
	
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>

</html>