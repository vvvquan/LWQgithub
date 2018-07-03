package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.service.ProviderService;
import com.neuedu.tool.Pager;
import com.neuedu.model.Buy;
import com.neuedu.model.Provider;
import com.neuedu.model.Tpjl;

@Controller
public class ProviderController {

	@Autowired
	ProviderService providerService;
	
	@RequestMapping("/provider/findAll")
	public String findAll(Model model, @RequestParam String pageNow, HttpServletRequest request){
		int pagenow = 1;
		if(pageNow != null && !pageNow.equals("")){
			pagenow = Integer.parseInt(pageNow);
		}
		List<Provider> listProvider = providerService.select(pagenow);
		List<Provider> listall = providerService.selectAll();
		request.setAttribute("listProvider", listProvider);
		Pager page = new Pager(pagenow, listall.size());
		request.setAttribute("page", page);
		return "gysxinxi";
	}
	
	@RequestMapping("/provider/find")
	public String find(@RequestParam String id, HttpSession session, Model model){
		int provid = Integer.parseInt(id);
		Provider p = providerService.selectByPrimaryKey(provid);
		if(p == null){
			return "index";
		}else{
			model.addAttribute("listProvider", p);
			return "gysdetails";
		}
	}
	
	@RequestMapping("/provider/find2")
	public String find2(@RequestParam String id, HttpServletRequest request, Model model){
		int provid = Integer.parseInt(id);
		Provider p = providerService.selectByPrimaryKey(provid);
		if(p == null){
			return "index";
		}else{
			model.addAttribute("listProvider", p);
			return "updategys";
		}
	}
	
	@RequestMapping("/provider/update")
	public String update(String provid, String provname, String phone, String address, HttpServletRequest request){
		int id = Integer.parseInt(provid);
		Provider p = new Provider();
		p.setProvid(id);
		p.setAddress(address);
		p.setPhone(phone);
		p.setProvname(provname);
		providerService.updateByPrimaryKey(p);
		List<Provider> listProvider = providerService.select(1);
		request.setAttribute("listProvider", listProvider);
		Pager page = new Pager(1, listProvider.size());
		request.setAttribute("page", page);
		return "gysxinxi";
	}
	
	@RequestMapping("/provider/add")
	public String add(String provname, String phone, String address, HttpServletRequest request){
		Provider p = new Provider();
		p.setProvname(provname);
		p.setPhone(phone);
		p.setAddress(address);		
		providerService.insert(p);
		List<Provider> listall = providerService.select(1);
		request.setAttribute("listProvider", listall);
		Pager page = new Pager(1, listall.size());
		request.setAttribute("page", page);
		return "gysxinxi";
	}
	
	@RequestMapping("/provider/delete")
	public String deleteProduct(@RequestParam String number, HttpServletRequest request) {
		if(!number.equals("")){
			String[] ids = number.split("-");
			for(int i = 0; i < ids.length; i++){
				int provid = Integer.parseInt(ids[i]);
				providerService.deleteByPrimaryKey(provid);
			}
		}
		List<Provider> listProvider = providerService.select(1);
		List<Provider> listall = providerService.selectAll();
		request.setAttribute("listProvider", listProvider);		
		Pager page = new Pager(1, listall.size());
		request.setAttribute("page", page);
		return "gysxinxi";
	}
}
