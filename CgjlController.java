package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Cgjl;
import com.neuedu.service.CgjlService;

@Controller
public class CgjlController {

	@Autowired
	private CgjlService cgjlService;
	
	@RequestMapping("/cgjl/findAll")
	public String findAll(Model model){
		List<Cgjl> list = cgjlService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listCgjl", list);
			return "caigoujilu";
		}
	}
	
	@RequestMapping("/cgjl/findById")
	public String findById(String text, HttpSession session, Model model){
		int id = Integer.parseInt(text);
		Cgjl cg = cgjlService.selectByPrimaryKey(id);
		
		if(cg == null){
			return "index";
		}else{
			model.addAttribute("Buy1", cg);
			return "caigoudetails";
		}
	}
}
