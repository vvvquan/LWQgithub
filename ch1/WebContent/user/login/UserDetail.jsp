<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import = "cn.maiba.*"
    import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "UserLogin.css">
</head>
<%@ include file="Header.jsp" %>
<br>
<script type="text/javascript">
function handle_modify(){
	window.location.href="<%=request.getContextPath()%>/user/login/UserModify.jsp?userId=<%=user.getId()%>";
}

function handle_delete(){
	window.location.href="<%=request.getContextPath()%>/user/login/Handle-UserDelete.jsp?userId=<%=user.getId()%>";
}

function handle_list_user(){
	window.location.href="<%=request.getContextPath()%>/user/login/UserList.jsp";
}
</script>
<body>
<div>
<% 
	
//	String userId = request.getParamter("userId");
//	String str = request.getQueryString();
	String[] tmp = request.getQueryString().split("="); 	
	String userId = tmp[1];
	
	int userID = Integer.parseInt(userId);
	User obj = (User)MyDataBase.load(User.TABLE_NAME, userID);
%>
	<form>
	<table align = "center" border = "1">
	<tr class = "table_title">
		<td colspan = "2" align = "center">用户具体信息</td>
	</tr>
	<tr class="table_mid">
		<td>ID：</td>
		<td><%= userID %></td>
	</tr>
	<tr class="table_mid">
		<td>帐号：</td>
		<td><%= obj.getAccount() %></td>
	</tr>
	<tr class="table_mid">
		<td>密码：</td>
		<td><%= obj.getPassword() %></td>
	</tr>
	<tr class="table_mid">
		<td>昵称：</td>
		<td><%= obj.getUserName() %></td>
	</tr>
	<tr class="table_mid">
		<td>年龄：</td>
		<td><%= obj.getAge() %></td>
	</tr>
	<tr class="table_mid">
		<td>电子邮件：</td>
		<td><%= obj.getEmail() %></td>
	</tr>
	<tr class = "table_title">
		<td align = "center" colspan = "2">
		<input type="button" value="修改" onclick="handle_modify()">&nbsp;&nbsp;&nbsp;
		<input type="button" value="删除" onclick="handle_delete()">&nbsp;&nbsp;&nbsp;
		<input type="button" value="返回" onclick="handle_list_user()">
		</td>
	</tr>
	</table>
	</form>
</div>
<br>
<%@ include file="Footer.jsp" %>
</body>
</html>