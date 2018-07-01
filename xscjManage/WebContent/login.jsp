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
<style>
div{	
	padding-top:100px;
	padding-bottom:100px;
}
.title{
	text-align:center;
	font-size:25px;
	color:blue;
}
.regist{
	padding-top:10px;
	padding-bottom:10px;	
}
</style>
</head>

<body>
	<div align="center">
	<s:form action="login" method="post" theme="simple">
	<s:token></s:token>
	<table>
		<tr>
			<td colspan="2" class="title">用户登录</td>
		</tr>
		<tr>
			<td>学号：<s:textfield id="xh" name="dl.xh" size="20"  class="form-control"/></td>
		</tr>
		<tr>
			<td>密码：<s:password id="kl" name="dl.kl" size="20"  class="form-control"/></td>
		</tr>
		<tr>
			<td align="center">
				<s:submit value="登陆" class="btn btn-info" onClick="return check()"/>
				<s:reset value="重置" class="btn btn-info"/>
			</td>
		</tr>
	</table>
	</s:form>
	<div class="regist">还没有帐号？<a href="regist.jsp">马上注册</a></div>
	</div>
</body>
<script type="text/javascript">
	function check(){
		xh = document.getElementById("xh").value;
		kl = document.getElementById("kl").value;
		if(xh == undefined || xh.length==0){
			alert("请输入学号");
			return false;
		}
		if(kl == undefined || kl.length==0){
			alert("请输入密码");
			return false;
		}
		return true;
	}
</script>
</html>