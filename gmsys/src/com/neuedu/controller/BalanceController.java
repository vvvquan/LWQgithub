package com.neuedu.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Balance;
import com.neuedu.service.BalanceService;
import com.neuedu.service.CategoryService;

//配置MVC的控制器类
@Controller
public class BalanceController {
	//在mvc的控制层整合service服务层
			@Autowired 
			private BalanceService balance;
			//在浏览中通过URL调用这个方法进行登录
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
}
