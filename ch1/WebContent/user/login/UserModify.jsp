<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import = "cn.maiba.*"
    import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Modify User</title>
<link rel = "stylesheet" type = "text/css" href = "UserLogin.css">
</head>
<%@ include file="Header.jsp" %>
<br>
<body>
<div>
<% 
//	String str = request.getQueryString();
	String[] tmp = request.getQueryString().split("="); 	
	String userId = tmp[1];
	
	int userID = Integer.parseInt(userId);
	User obj = (User)MyDataBase.load(User.TABLE_NAME, userID);
%>
	<form action="Handle-UserModify.jsp" method="post">
	<table align = "center" border = "1">
	<tr class = "table_title">
		<td colspan = "2" align = "center">用户具体信息</td>
	</tr>
	<tr class="table_mid">
		<td>帐号：</td>
		<td><input type = "text" name = "account" id = "account" value = "<%= obj.getAccount() %>"></td>
	</tr>
	<tr class="table_mid">
		<td>密码：</td>
		<td><input type = "text" name = "passwd" id = "passwd" value = "<%= obj.getPassword() %>"></td>
	</tr>
	<tr class="table_mid">
		<td>昵称：</td>
		<td><input type = "text" name = "nickname" id = "nickname" value = "<%= obj.getUserName() %>"></td>
	</tr>
	<tr class="table_mid">
		<td>年龄：</td>
		<td><input type = "text" name = "age" id = "age" value = "<%= obj.getAge() %>"></td>
	</tr>
	<tr class="table_mid">
		<td>电子邮件：</td>
		<td><input type = "text" name = "email" id = "email" value = "<%= obj.getEmail() %>" ></td>
	</tr>
	<tr class = "table_title">
		<td align = "center" colspan = "2">
		<input type="submit" value="确定" >
		</td>
	</tr>
	</table>
	<input type = "hidden" name = "ID" value = "<%= userId %>">
	</form>
</div>
<br>
<%@ include file="Footer.jsp" %>
</body>
</html>