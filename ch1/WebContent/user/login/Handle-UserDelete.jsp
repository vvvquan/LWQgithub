<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>handle user delete</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<br>
<script>
function handle_list_user(){
	window.location.href="<%=request.getContextPath()%>/user/login/UserList.jsp";
}
</script>
<%
	//String userId = request.getParamter("userId");
//	String str = request.getQueryString();
	String[] tmp = request.getQueryString().split("="); 	
	String userId = tmp[1];	
	int userID = Integer.parseInt(userId);
	//从数据库中删去ID为userID的用户
	MyDataBase.delete(User.TABLE_NAME, userID);
	session.removeAttribute("User");
%>
<div align = "center">
	<p align = "center">删除用户成功</p>
	<input type = "button" value = "返回" onClick = "handle_list_user()" /><br>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>