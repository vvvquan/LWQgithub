package com.neuedu.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Balance;
import com.neuedu.service.BalanceService;
import com.neuedu.service.CategoryService;

@Controller
public class BalanceController {
			@Autowired 
			private BalanceService balance;

			@RequestMapping("/zc/add.do")
			public String add(String zcname,int zcnumber,String price,String year,int cid,int departid ) {
				
				BigDecimal a=new BigDecimal(price);
				Balance bal = new Balance();
				bal.setBname(zcname);
				bal.setBdate(new Date());
				bal.setBid(cid);
				bal.setCid(cid);
				bal.setDepartid(departid);
				bal.setPrice(a);
				bal.setBcount((double)zcnumber);
				System.out.println(bal.getBname());
				balance.insert(bal);
				return "/addzc";
			}
			
			@RequestMapping("/balance/findAll")
			public String findAll(Model model){
				List<Balance> list = balance.selectAll();
				if(list == null) {
					return "index";
				}else {
					model.addAttribute("listBalance", list);
					return "totalzc";
				}
			}
			
			@RequestMapping("/Balance/findById")
			public String findById(String text ,HttpSession session, Model model){
				int id = Integer.parseInt(text);
				@SuppressWarnings("unchecked")
				List<Balance> list = (List<Balance>) balance.selectByPrimaryKey(id);
				
				if(list == null) {
					return "index";
				}else {
					model.addAttribute("listBalance", list);
					return "totalzc";
				}
			}
}
