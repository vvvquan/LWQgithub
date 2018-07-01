<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import = "cn.maiba.*"
    import = "java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "UserLogin.css">
</head>
<body>
<%
	User user = (User)session.getAttribute("User");
	%>
		<div align = "right">
			<input type = "text" />
			<select></select>
			<input type = "button" value = "搜索" />
		</div>
		<div class = "banner">
		<% 
			String str = user.getUserName();
			out.print(str+"，你好");
		%>
			<span style = "float:right">
			<a href = "">麦吧</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="UserList.jsp">后台管理</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="UserModify.jsp">修改基本信息</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="../UserLogin.jsp">退出麦吧</a>
			</span>
		</div>
</body>
</html>