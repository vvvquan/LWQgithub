<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<%@include file="head.jsp" %>
<body>
<div id="content" class="row">
    <div class="col-md-3">
        <%@include file="left.jsp" %>
    </div>
    <div class="col-md-9">
        	<table class="table table-striped">
		<tr bgcolor="sliver">
			<th>课程号</th><th>课程名</th><th>学期</th><th>学时</th><th>学分</th><th>操作</th>
		</tr>
		<s:iterator value="#request.list" id="xscj">
		<tr>
			<td><s:property value="#xscj.kch"/></td>
			<td><s:property value="#xscj.kcm"/></td>
			<td><s:property value="#xscj.kxxq"/></td>
			<td><s:property value="#xscj.xs"/></td>
			<td><s:property value="#xscj.xf"/></td>
			<td>
				<a href="deleteOneXskc.action?kch=<s:property value="#xscj.kch"/>" onClick="if(!confirm("确定删除该课程吗？"))return false;else return true;">删除</a>
			</td>
		</tr>
		</s:iterator>
	</table>
	
	<nav>
	<s:set name="page" value="#request.page"></s:set>
	<ul class="pager">
		<s:if test="#page.hasFirst">
			<li><a href="xsInfo.action?pageNow=1">首页</a></li>
		</s:if>
		<s:if test="#page.hasPre">
			<li><a href="xsInfo.action?pageNow=<s:property value="pageNow-1"/>">上一页</a></li>
		</s:if>
		<s:if test="#page.hasNext">
			<li><a href="xsInfo.action?pageNow=<s:property value="pageNow+1"/>">下一页</a></li>
		</s:if>
		<s:if test="#page.hasLast">
			<li><a href="xsInfo.action?pageNow=<s:property value="totalPage"/>">末页</a></li>
		</s:if>
	</ul>
	<nav>  
    </div>
</div>
</body>
<%@include file="bottom.jsp" %>
</html>