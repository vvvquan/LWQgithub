<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="/xscjManage/bootstrap/js/jquery/2.0.0/jquery.min.js"></script>
<link href="/xscjManage/bootstrap/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="/xscjManage/bootstrap/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
	<h3>该学生成绩如下：</h3>
	<hr width="700" align="left">
	<table class="table table-striped">
		<tr>
			<th>姓名</th><th>课程名</th><th>成绩</th><th>学分</th>
		</tr>
		<s:iterator value="#request.list" id="xscj">
			<tr>
				<td><s:property value="#xscj[0]"/></td>
				<td><s:property value="#xscj[1]"/></td>
				<td><s:property value="#xscj[2]"/></td>
				<td><s:property value="#xscj[3]"/></td>
			</tr>
		</s:iterator>
	</table>
	<input type="button" value="返回" onClick="javascript:history.back()" class="btn btn-info"/>
</body>
</html>