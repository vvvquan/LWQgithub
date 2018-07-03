<%@page import="java.util.Iterator"%>
<%@page import="com.neuedu.model.Buy"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List" isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>集团化资产管理系统 by www.mycodes.net</title>
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
<link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
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
    document.getElementById("fom").action="${pageContext.request.contextPath}/files/addcaigou.jsp";
   document.getElementById("fom").submit();
}

</SCRIPT>

<body  data-type="index">
<%@include file="head.jsp" %>
    <div class="tpl-page-container tpl-page-header-fixed">
		<%@include file="leftNav.jsp" %>
		<%--内容 --%>
        <div class="tpl-content-wrapper">
            
            <form name="fom" id="fom" method="post">
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
				    <td height="30">      
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
				    <td height="62" background="../images/nav04.gif">         
					<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="21">&nbsp;</td>
					</tr>
				  </table></td>
				  </tr>
				  </table></td></tr>
				  <tr>
				    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
				    <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
				    <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				  <tr>
				    <td height="20" colspan="2" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 采购单详细内容</td>
				  </tr>				  
				  <%
					Buy ag=(Buy)request.getAttribute("Buy1");										 
				  %>
				  
				  <tr>
				    <td width="16%" height="20" align="right" bgcolor="#FFFFFF">采购单号:</td>
				    <td width="84%" colspan="2" bgcolor="#FFFFFF"><%=ag.getBuyid() %></td>
				  </tr>
				  <tr>
						<td width="16%" height="20" align="right" bgcolor="#FFFFFF">数量:</td>
				    <td width="84%" colspan="2" bgcolor="#FFFFFF"><%=ag.getBuycount() %></td>
				  </tr>
				  <tr>
				    <td width="16%" height="20" align="right" bgcolor="#FFFFFF">采购时间:</td>
				    <td width="84%" colspan="2" bgcolor="#FFFFFF"><fmt:formatDate value="<%=ag.getBuytime() %>" pattern="yyyy-MM-dd"/></td>
				  </tr>
				   <tr>
				    <td width="16%" height="20" align="right" bgcolor="#FFFFFF">供应商编号:</td>
				    <td width="84%" colspan="2" bgcolor="#FFFFFF"><%=ag.getProvid() %></td>
				  </tr>
				   <tr>
				  <td width="16%" height="20" align="right" bgcolor="#FFFFFF">产品编号：</td>
				   <td width="84%" colspan="2" bgcolor="#FFFFFF"><%=ag.getProdid() %></td>				   
				  </tr>
				  <tr>
				     <td width="16%" height="20" align="right" bgcolor="#FFFFFF">部门编号:</td>
				      <td width="84%" colspan="2" bgcolor="#FFFFFF"><%=ag.getDepartid() %></td>				   
				  </tr>
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
				    <div align="center"><input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/></div>
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