<%@page import="java.util.Iterator"%>
<%@page import="com.neuedu.model.*"%>
<%@page import="java.util.List" isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="jquery-ui-1.12.1/jquery-ui.min.css">
<link rel="stylesheet" href="jquery-ui-1.12.1/jquery-ui.theme.min.css">

<script src="jquery-ui-1.12.1/external/jquery/jquery.js"></script>
<script src="jquery-ui-1.12.1/jquery-ui.min.js"></script>
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
function verification() { 
	var _reTimeReg =/^(\d{4})-(0\d{1}|1[0-2])-(0\d{1}|[12]\d{1}|3[01])$/; ;
	var jhsjq=$("#BUYTIME").val();
    if($('#SCOUNT').val() == "") {  
        alert('报废数量不能为空!');  
        return false;  
    }  
    if($('#STIME').val() == ""&&!_reTimeReg.test(jhsjq)) {  
        alert('报废时间不能为空!且格式为：yyyy-MM-dd');  
        return false;  
    }    
    return true;  
} 
</SCRIPT>
<body class="ContentBody"  data-type="index">
<%@include file="head.jsp" %>

    <div class="tpl-page-container tpl-page-header-fixed">
		<%@include file="leftNav.jsp" %>
		<%--内容 --%>
        <div class="tpl-content-wrapper">
            
            <form action="${pageContext.request.contextPath}/Bfjl/add.do" method="post" name="form" onsubmit="return verification()">
				<div class="MainDiv">
					<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
			  			<tr>
			      			<th class="tablestyle_title" >报废单添加页面</th>
			  			</tr>
			  			<tr>
			    			<td class="CPanel">
					
			    			<table border="0" cellpadding="0" cellspacing="0" style="width:100%"></table>
							</td>
						</tr>
									
						<TR>
							<TD width="100%">
								<fieldset style="height:100%;">
								<legend>添加报废信息</legend>
								<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
								<tr>
									
									<td width="16%" align="right" nowrap="nowrap">报废编号:</td>
									<td width="34%"><input type="text" class="text" id="SID" name='SID' style="width:154px" value=""/></td>
								</tr> 
								<tr>
									
									<td width="16%" align="right" nowrap="nowrap">报废数量:</td>
									<td width="34%"><input type="text" class="text" id="SCOUNT" name='SCOUNT' style="width:154px" value=""/></td>
								</tr> 
								
								<tr>
									
									<td nowrap="nowrap" align="right">报废时间:</td>
									<td><input type="date" class="text" id="STIME" name='STIME'  style="width:154px" value=""/>
									</td>
									<td align="right">资产编号:</td>
								    <td>
										<select name="BID" style="width:154px">
									    		<%
										    		List<Balance> list=(List<Balance>)request.getAttribute("listBalance");
									              	Iterator<Balance> it = list.iterator();									              	
									              	while(it.hasNext()){									              	
									              		Balance c = it.next();
									    		%>									    													   	
											   	<option value ="<%=c.getBid()%>"><%=c.getBid()%></option>
											  <%} %>
										</select>
									</td>
								</tr>
								<tr>
									<td align="right">部门编号:</td>
								    <td>
										<select name="DEPARTID" style="width:154px">
									    		<%
										    		List<Department> list2 = (List<Department>)request.getAttribute("listDepartment");
									              	Iterator<Department> it2 = list2.iterator();
									              	while(it2.hasNext()){									              	
									              		Department d = it2.next();
									    		%>									    													   	
											   	<option value ="<%=d.getDepartid()%>"><%=d.getDepartid()%></option>
											  <% }%>
											</select>
									</td>
								</tr>
								</table><br />
							    </fieldset>			
						    </TD>
					    </TR>
				 	    <TR>
							<TD colspan="2" align="center" height="50px">
					    	<input type="submit" name="Submit" value="保存" class="button"/>
					    	<input type="button" name="Submit2" value="返回" class="button" onclick="window.history.go(-1);"/>
					    	</TD>
						</TR>
					</table>
				</div>
			    </form>

			    <script>			        
			        /*
			         在网页中使用第三方js组件的开发步骤：
			            1.下载js源代码，可能包含一些主题文件(css,images,js,flash)
			            2.拷贝到项目中，项目目录下面
			            3.在页面中引入js和css
			            4.编写代码进行调用
			        */
			         $(function() {  
			              //插件的调用  
			              $("#datevalue21").datepicker({  
			                  //在这里进行插件的属性设置 
			                  dateFormat: "yy-mm-dd"
			              });  
			  
			           }); 
			    </script>

			

        </div>
	</div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>
</html>