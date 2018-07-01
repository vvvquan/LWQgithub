<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<script src="/xscjManage/bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="/xscjManage/bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="/xscjManage/bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<%@include file="head.jsp" %>
<body>
<div id="content" class="row">
    <div class="col-md-3">
        <%@include file="left.jsp" %>
    </div>
    <div class="col-md-9">
        	<table class="table table-striped">
		<tr align="center" bgcolor="sliver">
			<th>学号</th><th>姓名</th><th>性别</th><th>专业</th><th>出生日期</th><th>总学分</th>
			<th>详细信息</th><th>操作</th><th>操作</th>
		</tr>
		<s:iterator value="#request.list" id="xs">
		<tr>
			<td><s:property value="#xs.xh"/></td>
			<td><s:property value="#xs.xm"/></td>
			<td><s:if test="#xs.xb==0">男</s:if><s:else>女</s:else></td>
			<td><s:property value="#xs.zyb.zym"/></td>
			<td><s:property value="#xs.cssj"/></td>
			<td><s:property value="#xs.zxf"/></td>
			<td><a href="findXs.action?xs.xh=<s:property value="#xs.xh"/>">详细信息</a></td>
			<td><a href="deleteXs.action?xs.xh=<s:property value="#xs.xh"/>" onClick="if(!confirm('确定删除该学生信息吗？')) return true;else return true;">删除</a></td>
			<td><a href="updateXsView.action?xs.xh=<s:property value="#xs.xh"/>">修改</a></td>
		</tr>
		</s:iterator>
	</table>
	<nav>
	<ul class="pager">
		<s:set name="page" value="#request.page"></s:set>
		<s:if test="#page.hasFirst">
			<li><a href="xsInfo.action?pageNow=1">首页</a></li>
		</s:if>
		<s:if test="#page.hasPre">
			<li><a href="xsInfo.action?pageNow=<s:property value="#page.pageNow-1"/>">上一页</a></li>
		</s:if>
		<s:if test="#page.hasNext">
			<li><a href="xsInfo.action?pageNow=<s:property value="#page.pageNow+1"/>">下一页</a></li>
		</s:if>
		<s:if test="#page.hasLast">
			<li><a href="xsInfo.action?pageNow=<s:property value="#page.totalPage"/>">末页</a></li>
		</s:if>
	</ul>
	</nav> 
    </div>
</div>
</body>
<%@include file="bottom.jsp" %>
</html>