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
	用户尚未登录，所以无法执行您所做的操作，请先<a href = "<%=request.getContextPath()%>/user/UserLogin.jsp" >登录</a>
	<br><br><br><br>
</p>
<%@ include file="Footer.jsp" %>
</body>
</html>