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
        	<s:set name="xs" value="#request.xsInfo"></s:set>
	<s:form action="updateXs" method="post" theme="simple" enctype="multipart/form-data">
		<table class="table table-striped">
			<tr>
				<td width="80">学号：</td>
				<td><input type="text" name="xs.xh" value="<s:property value="#xs.xh"/>" disabled/></td>
			</tr>
			<tr>
				<td width="80">姓名：</td>
				<td><input type="text" name="xs.xm" value="<s:property value="#xs.xm"/>"/></td>
			</tr>
			<tr>
				<td width="80">性别：</td>
				<td>
					<s:radio list="#{0:'男',1:'女'}" value="#xs.xb" name="xs.xb"></s:radio>
				</td>
			</tr>
			<tr>
				<td width="80">专业：</td>
				<td>
					<select name="xs.zyb.id">
						<s:iterator value="#request.zys" id="zy">
							<option value="<s:property value="#zy.id"/>">
								<s:property value="#zy.zym"/>
							</option>
						</s:iterator>
					</select>
				</td>
			</tr>
			<tr>
				<td width="80">出生时间：</td>
				<td><input type="text" name="xs.cssj" value="<s:property value="#xs.cssj"/>"/></td>
			</tr>
			<tr>
				<td width="80">总学分：</td>
				<td><input type="text" name="xs.zxf" value="<s:property value="#xs.zxf"/>"/></td>
			</tr>
			<tr>
				<td width="80">备注：</td>
				<td><input type="text" name="xs.bz" value="<s:property value="#xs.bz"/>"/></td>
			</tr>
			<tr>
				<td>照片</td>
				<td><input type="file" name="zpfile"/></td>
			</tr>
		</table>
		<input type="submit" value="修改" class="btn btn-info"/>
		<!-- 返回上一界面 -->
		<input type="button" value="返回" onClick="javascript:history.back();" class="btn btn-info"/>
	</s:form>  
    </div>
</div>
</body>
<%@include file="bottom.jsp" %>
<script type="text/javascript">
	document.getElementById("xs.zyb.id").value = <s:property value="#xs.zyb.id"/>
</script>
</html>