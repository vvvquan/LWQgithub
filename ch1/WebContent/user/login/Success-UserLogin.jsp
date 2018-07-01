<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "UserLogin.css">
</head>
<body>
<%@ include file="Header.jsp" %>
<p>
<font color = "blue">用户管理</font> &nbsp;&nbsp;<a href = "">我发表过的帖子</a> &nbsp;&nbsp;<a href="">我评论过的帖子</a>
</p>
<%
 System.out.println("User:"+user); 
%>
<div align = "center">
	<form>
	<table border = "1">
		<tr class = "table_title">
			<td colspan="4" align = "center">用户列表</td>
		</tr>
		<tr class = "table_mid">
			<td>ID</td>
			<td>帐号</td>
			<td>密码</td>
			<td>昵称</td>
		</tr>
		<tr>
			<td>
			<%= user.getId() %>
			</td>
			<td>
			<%= user.getAccount() %>
			</td>
			<td>
			<%= user.getPassword() %>
			</td>
			<td>
			<%= user.getUserName() %>
			</td>
		</tr>
	</table>
	</form>
</div>
<%@ include file="Footer.jsp" %>
</body>
</html>