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
        <div align="center">
	<h3>请填写学生信息</h3>
	<hr width="700" align="left">
	<s:form action="addXs" method="post" theme="simple" enctype="multipart/form-data">
		<table border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td><s:textfield id="xh" name="xs.xh" value="" class="form-control" placeholder="学号" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td><s:textfield id="xm" name="xs.xm" value="" class="form-control" placeholder="姓名" title="仅包含中英文字符"/></td>
			</tr>
			<tr>
				<td><s:radio name="xs.xb" value="0" list="#{0:'男',1:'女'}" label="性别"/></td>
			</tr>
			<tr>
				<td>
				<s:select class="form-control" name="xs.zyb.id" list="list" listKey="id" listValue="zym" headerKey="0" headerValue="--请选择专业--" label="专业"></s:select>
				</td>
			</tr>
			<tr>
				<td><input type="date" name="xs.cssj" class="form-control" placeholder="出生时间" title="格式:YYYY-MM-DD"/></td>
			</tr>
			<tr>
				<td><s:textfield name="xs.zxf" value="" class="form-control" placeholder="总学分" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td><s:textfield name="xs.bz" value="" class="form-control" placeholder="备注" title="仅最多包含25个中英文字符" maxlength="25"/></td>
			</tr>
			<tr>
				<td><s:file name="zpfile" label="照片"></s:file></td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="添加" class="btn btn-info" onClick="return check()">
					<input type="reset" value="重置"  class="btn btn-info">
				</td>
			</tr>
		</table>	
	</s:form>
	</div>  
    </div>
</div>
</body>
<%@include file="bottom.jsp" %>
<script type="text/javascript">
	function check(){
		xh = document.getElementById("xh").value;
		xm = document.getElementById("xm").value;
		if(xh == undefined || xh.length==0){
			alert("学号不能为空");
			return false;
		}
		if(xm == undefined || xm.length==0){
			alert("姓名不能为空");
			return false;
		}
		var regPos = "/^\d+$/"; // 非负整数
	    if(!regPos.test(xh)){
	    	alert("学号只能为数字");
	        return false;
	    }
		return true;
	}
</script>
</html>