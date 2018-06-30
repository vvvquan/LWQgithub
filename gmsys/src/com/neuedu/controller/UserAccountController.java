package com.neuedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.UserAccount;
import com.neuedu.service.UserAccountService;

@Controller
public class UserAccountController {

	@Autowired
	private UserAccountService accountService;

	@RequestMapping("/doLogin")
	public String doLogin(String account, String password, HttpSession session) {
		
		UserAccount userAccount = accountService.findUserByAccount(account);
		
		if (userAccount != null && userAccount.getPassword().equals(password)) {
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
		session.removeAttribute("login");
		session.removeAttribute("loginUser");
		
		return "redirect:login.html";
	}
}
