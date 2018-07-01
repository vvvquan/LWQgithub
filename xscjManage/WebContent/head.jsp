<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生成绩管理系统</title>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<style>
.title{
	font-size: 40px;
	color: blue;
	pading-top: 10px;
	padding-left: 10px;
}
.user{
	font-size: 40px;
	pading-top: 5px;
	padding-right: 5px;
}
a:hover{
	color: red;
}
</style>
</head>
<body>
	<s:set name="dl" value="#session['dl']"/>
	<div>
		<span class="title">学生成绩管理系统</span>
		<s:if test="#dl!=null">		
		<span class="user" style="float:right"><a href="exit.action"><s:property value="#dl.xh"/></a>，你好</span>		
		</s:if>
	</div>	
</body>
