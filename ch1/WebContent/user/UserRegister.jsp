<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>UserRegister</title>
<link rel = "stylesheet" type = "text/css" href = "Register.css">
</head>

<script type = "text/javascript">

function isEmail(str){ 
	var reg =  /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/; 
	return reg.test(str); 
}

function check()
{
	account = document.getElementById("account").value;
	passwd = document.getElementById("passwd").value;
	nickname = document.getElementById("nickname").value;
	age = document.getElementById("age").value;
	email = document.getElementById("email").value;
	if(account.length == 0 || passwd.length == 0 || nickname.length == 0 || age.length == 0 || email.length == 0)
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
		a = Integer.parseInt(age);
		if(a < 0 || a > 150){
			alert("年龄范围是0-150");
			return false;
		}
		else{
			
			if(!isEmail(email)){
				alert("邮件格式不正确");
				return false;
			}
			else{	
				alert("注册中……");
				return true;
			}
		}
	}
}
</script>

<body>
<%@ include file="Header.jsp" %>
<br>
<div class = "all">
	<form action="Handle-UserRegister.jsp" method="post">
	<table align = "center" border = "1">
	<tr class = "table_title">
		<td colspan = "2" align = "center">用户注册</td>
	</tr>
	<tr>
		<td>帐号：</td>
		<td><input type = "text" name = "account" id = "account"><font color = "red">*</font></td>
	</tr>
	<tr>
		<td>密码：</td>
		<td><input type = "password" name = "passwd" id = "passwd"><font color = "red">*</font></td>
	</tr>
	<tr>
		<td>昵称：</td>
		<td><input type = "text" name = "nickname" id = "nickname"></td>
	</tr>
	<tr>
		<td>年龄：</td>
		<td><input type="text" name = "age" id = "age" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"/></td>
	</tr>
	<tr>
		<td>电子邮件：</td>
		<td><input type = "text" name = "email" id = "email"></td>
	</tr>
	<tr class = "table_title">
		<td colspan = "2" align = "center">
		<input type = "submit" value = "注册" onClick = "return check()"/>
		</td>
	</tr>
	</table>
	</form>
</div>
<br>
<%@ include file="Footer.jsp" %>
</body>
</html>