<%@page import="java.util.Iterator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.neuedu.model.*"%>
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
.atten {font-size:12px;font-weight:normal;color:#F00;}
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
function tishi()
{
  var a=confirm('数据库中保存有该人员基本信息，您可以修改或保留该信息。');
  if(a!=true)return false;
  window.open("冲突页.htm","","depended=0,alwaysRaised=1,width=800,height=400,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}

function check()
{
document.getElementById("aa").style.display="";
}
</SCRIPT>

<body  class="ContentBody" data-type="index">
<%@include file="head.jsp" %>

    <div class="tpl-page-container tpl-page-header-fixed">
		<%@include file="leftNav.jsp" %>
		<%--内容 --%>
        <div class="tpl-content-wrapper">
            
            <form action="${pageContext.request.contextPath}/Bfjl/update.do" method="post"  name="form">
				<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
				  <tr>
				      <th class="tablestyle_title" >报废单基本信息修改</th>
				  </tr>
				  <tr>
				    <td class="CPanel">
						
						<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
								<TR>
							<TD width="100%">
								<fieldset style="height:100%;">
								<legend>报废单信息</legend>
									  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">									 
									 <%
									 	Bfjl ag = (Bfjl)request.getAttribute("Bfjl");										 
									 %>
									 
									  <tr>
									  <td nowrap align="right" width="15%">报废单号:</td>
									    <td width="35%"><input name='SID' type="text" class="text" style="width:154px" value="<%=ag.getSid() %>"  readonly="readonly" />
								        <span class="red">*</span></td>
									    <td nowrap align="right" width="15%">报废数量:</td>
									    <td width="35%"><input name='SCOUNT' type="text" class="text" style="width:154px" value="<%=ag.getScount() %>" />
									  </tr>
									   <tr>
									  <td nowrap align="right" width="15%">报废时间:</td>
									    <td width="35%"><input name='STIME' type="date" class="text" style="width:154px" value="<fmt:formatDate value="<%=ag.getStime() %>" pattern="yyyy-MM-dd"/>" />
								      
									    <td nowrap align="right" width="15%">资产编号:</td>
									    <td width="35%">
									    
									    <select name="BID" style="width:154px">
									    		<%
										    		List<Balance> list = (List<Balance>)request.getAttribute("listBalance");
									              	Iterator<Balance> it = list.iterator();
									              	while(it.hasNext()){									              										              		
									              		Balance c = it.next();
									    		%>
									    		<%
									    			if(c.getBid()==ag.getBid())
									    			{
									    		%>
											   	<option value ="<%=c.getBid()%>" selected><%=c.getBid()%></option>
											   	<%}else{ %>
											   	<option value ="<%=c.getBid()%>"><%=c.getBid()%></option>
											  <%} }%>
											</select>
									  </tr>
									   <tr>
									  <td nowrap align="right" width="15%">部门编号:</td>
									    <td width="35%">
								       		<select name="DEPARTID" style="width:154px">
									    		<%
										    		List<Department> list1=(List<Department>)request.getAttribute("listDepartment");
									              	Iterator<Department> it1=list1.iterator();
									              	while(it1.hasNext()){
									              	
									              		Department d=it1.next();
									    		%>
									    		<%
									    			if(d.getDepartid()==ag.getDepartid())
									    			{
									    		%>
											   	<option value ="<%=d.getDepartid()%>" selected><%=d.getDepartid()%></option>
											   	<%}else{ %>
											   	<option value ="<%=d.getDepartid()%>"><%=d.getDepartid()%></option>
											  <%} }%>
											</select>									    	
									  </tr>
									  </table>
							  <br />
								</fieldset>			</TD>
							
						</TR>						
						</TABLE>					
					 </td>
				  </tr>	
				 <TR>
					<TD colspan="2" align="center" height="50px">
						<input type="submit" name="Submit" value="保存" class="button" onClick="alert('保存成功')"/>　							
						<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
					</TD>
				 </TR>			  
				  </table>
				
				</div>
				</form>
        </div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>