package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Bfjl;
import com.neuedu.model.Buy;
import com.neuedu.model.Bxjl;
import com.neuedu.model.Tpjl;
import com.neuedu.model.UserAccount;
import com.neuedu.service.BfjlService;
import com.neuedu.service.BuyProductService;
import com.neuedu.service.BuyService;
import com.neuedu.service.BxjlService;
import com.neuedu.service.TpjlService;
import com.neuedu.tool.Pager;

@Controller
public class BuyProductController {
	@Autowired
	private BuyService buyService;
	@Autowired
	private TpjlService tpjlService;
	@Autowired
	private BxjlService bxjlService;
	@Autowired
	private BfjlService bfjlService;
	
	
	@RequestMapping("/buyProuduct/findAll")
	public String doLogin2(HttpServletRequest request) {
		List<Buy> list1 = buyService.selectAll();
		List<Tpjl> list2 = tpjlService.selectAll();
		List<Bxjl> list3 = bxjlService.selectAll();
		List<Bfjl> list4 = bfjlService.selectAll();
		request.setAttribute("listBuy1", list1);
		request.setAttribute("listBuy2", list2);
		request.setAttribute("listBuy3", list3);
		request.setAttribute("listBuy4", list4);				
		return "pandianxinxi";		
	}
	
	@RequestMapping("/buyProuduct/findAll2")
	public String doLogin5(@RequestParam String pageNow, HttpServletRequest request) {
		int pagenow = 1;
		if(pageNow != null && !pageNow.equals("")){
			pagenow = Integer.parseInt(pageNow);
		}
		List<Tpjl> list2 = tpjlService.select(pagenow);
		List<Tpjl> listall = tpjlService.selectAll();
		request.setAttribute("listTpjl", list2);
		Pager page = new Pager(pagenow, listall.size());
		request.setAttribute("page", page);
		return "tiaopeixinxi";
	}
	
	@RequestMapping("/buyProuduct/findAll3")
	public String doLogin3(@RequestParam String pageNow, HttpServletRequest request) {
		int pagenow = 1;
		if(pageNow != null && !pageNow.equals("")){
			pagenow = Integer.parseInt(pageNow);
		}
		List<Bxjl> list3 = bxjlService.select(pagenow);
		List<Bxjl> listall = bxjlService.selectAll();
		request.setAttribute("listBxjl", list3);	
		Pager page = new Pager(pagenow, listall.size());
		request.setAttribute("page", page);
		return "baoxiuxinxi";
	}
	
	@RequestMapping("/buyProuduct/findAll4")
	public String doLogin4(@RequestParam String pageNow, HttpServletRequest request) {
		int pagenow = 1;
		if(pageNow != null && !pageNow.equals("")){
			pagenow = Integer.parseInt(pageNow);
		}
		List<Bfjl> list4 = bfjlService.select(pagenow);
		List<Bfjl> listall = bfjlService.selectAll();
		request.setAttribute("listBfjl", list4);
		Pager page = new Pager(pagenow, listall.size());
		request.setAttribute("page", page);
		return "baofeixinxi";		
	}
}
