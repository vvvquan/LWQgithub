package com.neuedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.UserAccount;
import com.neuedu.service.UserAccountService;
//配置mvc的控制器类
@Controller
public class UserAccountController {
	// 在mvc的控制层整合service服务层
	@Autowired
	private UserAccountService accountService;
	//在浏览中通过URL调用这个方法进行登录:doLogin.do
	@RequestMapping("/doLogin")
	public String doLogin(String account, String password, HttpSession session) {
		
		UserAccount userAccount = accountService.findUserByAccount(account);
		
		if (userAccount != null && userAccount.getPassword().equals(password)) {
			// 登录成功，进入到管理界面
			//保存用户登录状态
			session.setAttribute("login", true);
			session.setAttribute("loginUser", userAccount);			
			return "redirect:index.jsp";
		} else {
			session.removeAttribute("login");
			return "redirect:login.html";
		}
	}
		
	@RequestMapping("/doLogout")
	public String doLogout(HttpSession session){
		// 登录失败，返回登录页面
		//删除登录状态，避免登录后再次登录
		session.removeAttribute("login");
		session.removeAttribute("loginUser");
		
		return "redirect:login.html";
	}
}
