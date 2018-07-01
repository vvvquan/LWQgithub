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
</head>

	<s:set name="dl" value="#session['dl']"/>
	<ul class="nav nav-pills nav-stacked" style="width:200px; margin-left:20px;">
		<li role="presentation" class="active">学生信息管理</li>
		<s:if test="#dl.role==1">
		<li role="presentation" ><a href="addXsView.action">信息录入</a></li>
		</s:if>
		<li role="presentation" ><a href="xsInfo.action">信息查询</a></li>
		<li role="presentation" class="active">成绩信息管理</li>
		<s:if test="#dl.role==1">
		<li role="presentation" ><a href="addXscjView.action">成绩录入</a></li>
		</s:if>
		<li role="presentation" ><a href="xscjInfo.action">成绩查询</a></li>
		<li role="presentation" class="active">课程信息管理</li>
		<s:if test="#dl.role==1">
		<li role="presentation" ><a href="addXskcView.action">课程录入</a></li>
		</s:if>
		<li role="presentation" ><a href="xskcInfo.action">课程查询</a></li>
		<li role="presentation" class="active">其他</li>
		<s:if test="#dl.role==1">
		<li role="presentation" ><a href="#">信箱</a></li>
		</s:if>
		<s:if test="#dl.role==0">
		<li role="presentation" ><a href="#" data-toggle="modal" data-target="#myModal">投诉建议</a></li>
		</s:if>
	</ul>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">投诉建议</h4>
          </div>
          <div class="modal-body">
            <p>内容</p>
            <textarea class="form-control"></textarea>
          </div>
          <div class="modal-footer">
            <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
            <button class="btn btn-primary" type="button">提交</button>
          </div>
        </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>

</html>