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
<%	
	String account = request.getParameter("account");
	String password = request.getParameter("passwd");
	
	boolean success = false;
	//读取登录帐号所对应的用户信息(User)
	List<User> userList = 
			MyDataBase.select(User.TABLE_NAME,"account",account,DBOperator.OP_EQUAL);

	//读出的用户表为空，说明没有该帐号
	if(userList == null || userList.size()==0){
		success = false;
		response.sendRedirect(request.getContextPath()+"/user/Failure-UserLogin.jsp");
	} else {
		User user = userList.get(0); //读出信息
		//匹配用户密码是否正确
		if(password.equals(user.getPassword())) { //密码正确
			success = true;
			//用户登录成功，把该用户信息放入session，说明用户已登录
			request.getSession().setAttribute("User", user);
			String forwardURL = (String)session.getAttribute("forwardURL");
			System.out.println("after login:"+forwardURL);
			if(forwardURL != null){
				session.removeAttribute("forwardURL");
				response.sendRedirect(forwardURL);
			} else {
				response.sendRedirect(request.getContextPath()+"/user/login/Success-UserLogin.jsp");
			}
		} else{ //密码不正确
			success = false;
		}
	}
%>
</body>
</html>