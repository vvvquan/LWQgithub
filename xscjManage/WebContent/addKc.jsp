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
	<h3>请填写课程信息</h3>
	<hr width="700" align="left">
	<s:form action="addKc" method="post" theme="simple">
		<table border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td><s:textfield id="kch" name="kc.kch" value="" class="form-control" placeholder="课程号" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td><s:textfield id="kcm" name="kc.kcm" value="" class="form-control" placeholder="课程名" title="仅包含中文字符"/></td>
			</tr>
			<tr>
				<td>
				<select name="kc.kxxq" class="form-control" title="请选择该课程的上课学期">
					<option value="1">1</option><option value="2">2</option><option value="3">3</option>
					<option value="4">4</option><option value="5">5</option><option value="6">6</option>
					<option value="7">7</option><option value="8">8</option>
				</select>
				</td>
			</tr>
			<tr>
				<td><s:textfield id="xs" name="kc.xs" value="" class="form-control" placeholder="学时" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td><s:textfield id="xf" name="kc.xf" value="" class="form-control" placeholder="学分" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="确定" class="btn btn-info" onClick="return check()">
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
		kch = document.getElementById("kch").value;
		kcm = document.getElementById("kcm").value;
		xs = document.getElementById("xs").value;
		xf = document.getElementById("xf").value;
		if(kch == undefined || kch.length==0){
			alert("课程号不能为空");
			return false;
		}
		if(kcm == undefined || kcm.length==0){
			alert("课程名不能为空");
			return false;
		}
		if(xs == undefined || xs.length==0){
			alert("学时不能为空");
			return false;
		}
		if(xf == undefined || xf.length==0){
			alert("学分不能为空");
			return false;
		}
		return true;
	}
</script>
</html>