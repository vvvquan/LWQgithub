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
	<h3>请填写注册信息</h3>
	<hr width="700" align="left">
	<s:form action="addDl" method="post" theme="simple">
		<table border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td><s:textfield id="xh" name="dl.xh" value="" class="form-control" placeholder="输入学号" title="仅包含数字"/></td>
			</tr>
			<tr>
				<td><s:password id="kl" name="dl.kl" value="" class="form-control" placeholder="输入密码" title="仅包含大小字母和数字"/></td>
			</tr>
			<tr>
				<td><s:password id="kll" value="" class="form-control" placeholder="再次输入密码确认" title="仅包含大小字母和数字"/></td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="确定" class="btn btn-info" onClick="return check()">
					<a href="login.jsp" class="btn btn-info">返回</a>
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
		kl = document.getElementById("kl").value;
		kll = document.getElementById("kll").value;
		if(xh == undefined || xh.length==0){
			alert("请输入学号");
			return false;
		}
		if(kl == undefined || kl.length==0){
			alert("请输入密码");
			return false;
		}
		if(kll == undefined || kll.length==0){
			alert("请输入确认密码");
			return false;
		}
		if(kll != kl){
			alert("密码和确认密码不相同");
			return false;
		}
		return true;
	}
</script>
</html>