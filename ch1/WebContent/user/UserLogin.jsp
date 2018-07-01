<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>User Login</title>
<link rel = "stylesheet" type = "text/css" href = "UserLogin.css">
</head>

<script type = "text/javascript">
function check()
{
	account = document.getElementById("account").value;
	passwd = document.getElementById("passwd").value;
	if(account.length == 0 || passwd.length == 0)
	{
		alert("不能为留空……");
		return false;
	}
	else
	if(passwd.length < 6){
		alert("密码长度不少于6位");
		return false;
	}
	else{	
			alert("登录中……");
			return true;
	}
}
function handle_UserRegister(){
	window.location.href="<%=request.getContextPath()%>/user/UserRegister.jsp";
}
</script>

<body>
<%@ include file="Header.jsp" %>
<br>
<div>
	<form action="Handle-UserLogin.jsp" method="post">
	<table align = "center" border = "1">
	<tr class = "table_title">
		<td colspan = "2" align = "center">用户登录</td>
	</tr>
	<tr class="table_mid">
		<td>帐号：</td>
		<td><input type = "text" name = "account" id = "account"></td>
	</tr>
	<tr class="table_mid">
		<td>密码：</td>
		<td><input type = "password" name = "passwd" id = "passwd"></td>
	</tr>
	<tr class = "table_title">
		<td align = "center" colspan = "2">
		<input type = "submit" value = "登录" onClick = "return check()" />
		&nbsp;&nbsp;&nbsp;
		<input type = "button" value = "注册" onClick = "handle_UserRegister()" />
		</td>
	</tr>
	</table>
	</form>
</div>
<br>
<%@ include file="Footer.jsp" %>
</body>
</html>