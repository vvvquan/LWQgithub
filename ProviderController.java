package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.service.ProviderService;
import com.neuedu.model.Provider;

@Controller
public class ProviderController {

	@Autowired
	ProviderService providerService;
	
	@RequestMapping("/provider/findAll")
	public String findAll(Model model){
		List<Provider> list = providerService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listProvider", list);
			return "gysxinxi";
		}
	}
	
	@RequestMapping("/provider/find")
	public String find(String provid, HttpSession session, Model model){
		int id = Integer.parseInt(provid);
		Provider p = providerService.selectByPrimaryKey(id);
		if(p == null){
			return "index";
		}else{
			model.addAttribute("listProvider", p);
			return "gysdetails";
		}
	}
	
	@RequestMapping("/provider/find2")
	public String find2(String provid, HttpSession session, Model model){
		int id = Integer.parseInt(provid);
		Provider p = providerService.selectByPrimaryKey(id);
		if(p == null){
			return "index";
		}else{
			model.addAttribute("listProvider", p);
			return "updategys";
		}
	}
	
	@RequestMapping("/provider/update")
	public String update(String provid, String provname, String phone, String address, HttpSession sesson){
		int id = Integer.parseInt(provid);
		Provider p = new Provider();
		p.setProvid(id);
		p.setAddress(address);
		p.setPhone(phone);
		p.setProvname(provname);
		int y = providerService.updateByPrimaryKey(p);
		if(y == 0){
			return "index";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("/provider/add")
	public String add(String provname, String phone, String address, HttpSession session){
		Provider p = new Provider();
		p.setProvname(provname);
		p.setPhone(phone);
		p.setAddress(address);
		
		int y = providerService.insert(p);
		if(y == 0){
			return "index";
		}else{
			return "index";
		}
	}
}
