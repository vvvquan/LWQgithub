<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生详细信息</title>
<script src="/xscjManage/bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="/xscjManage/bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="/xscjManage/bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
	<h3>该学生信息如下：</h3>
	<s:set name="xs" value="#request.xs"></s:set>
	<s:form action="xsInfo" method="post">
		<table class="table table-striped">
			<tr>
				<td>学号：</td>
				<td width="100"><s:property value="#xs.xh"/></td>
				<td rowspan="7"><img src="getImage.action?xs.xh=<s:property value="#xs.xh"/>"></td>
			</tr>
			<tr>
				<td>姓名：</td>
				<td width="100"><s:property value="#xs.xm"/></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td width="100"><s:if test="#xs.xb==0">男</s:if><s:else>女</s:else></td>
			</tr>
			<tr>
				<td>专业：</td>
				<td width="100"><s:property value="#xs.zym"/></td>
			</tr>
			<tr>
				<td>出生时间：</td>
				<td width="100"><s:property value="#xs.cssj"/></td>
			</tr>
			<tr>
				<td>总学分：</td>
				<td width="100"><s:property value="#xs.zxf"/></td>
			</tr>
			<tr>
				<td>备注：</td>
				<td width="100"><s:property value="#xs.bz"/></td>
			</tr>
			<tr>
				<td>
					<s:submit value="返回" class="btn btn-info"/>
				</td>
			</tr>
		</table>
	</s:form>
	</div>
</body>
</html>