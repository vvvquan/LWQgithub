<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="cn.maiba.*" 
    import="java.util.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Handle-UserModify</title>
</head>
<script>
function handle_list_user(){
	window.location.href="<%=request.getContextPath()%>/user/login/UserList.jsp";
}
</script>
<body>
<%	
	User user = new User();
	user.setAccount(request.getParameter("account"));
	user.setUserName(request.getParameter("nickname"));
	user.setPassword(request.getParameter("passwd"));
	String Age = request.getParameter("age");
	int intAge = Integer.parseInt(Age);
	user.setAge(intAge);
	user.setEmail(request.getParameter("email"));
	
	String userId = (String)request.getParameter("ID");
	int userID = Integer.parseInt(userId);
	
	MyDataBase.delete(User.TABLE_NAME, userID);
	session.removeAttribute("User");
	MyDataBase.save(User.TABLE_NAME, user);
	session.setAttribute("User",user);
%>
<div align = "center">
	<p align = "center">修改成功</p>
	<input type = "button" value = "返回" onClick = "handle_list_user()" /><br>
</div>
</body>
</html>