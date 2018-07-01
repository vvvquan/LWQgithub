<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<p align = "center">
	用户名或者密码错误，请重新登录！<br>
	<br><br><br><br>
	<input type = "button" value = "重新登录" onClick = "history.back(-2)">
</p>
<%@ include file="Footer.jsp" %>
</body>
</html>