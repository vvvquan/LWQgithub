<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="cn.maiba.*" 
    import="java.util.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>检验帐号是否存在</title>
</head>
<body>
<%	User user = new User();
	user.setAccount(request.getParameter("account"));
	user.setUserName(request.getParameter("nickname"));
	user.setPassword(request.getParameter("passwd"));
	String Age = request.getParameter("age");
	int intAge = Integer.parseInt(Age);
	user.setAge(intAge);
	user.setEmail(request.getParameter("email"));
	List userList = 
			MyDataBase.select(user.TABLE_NAME,"account",user.getAccount(),DBOperator.OP_EQUAL);
	if(userList != null){
	%>
		<jsp:forward page="Failure-UserRegister.jsp"/>
	<%
	}
	else
	if(user.getUserName().length() > 0 && user.getAge() > 0 && user.getAge() < 150 && user.getPassword().length() > 0){
		MyDataBase.save(user.TABLE_NAME,user);
	%>
		<jsp:forward page="Success-UserRegister.jsp"/>
	<%
	}
	%>
</body>
</html>