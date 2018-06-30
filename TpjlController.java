package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.service.TpjlService;
import com.neuedu.model.Tpjl;

@Controller
public class TpjlController {
	
	@Autowired
	TpjlService tpjlService;
	
	@RequestMapping("/tpjl/findAll")
	public String findAll(Model model){
		List<Tpjl> list = tpjlService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listTpjl", list);
			return "tiaopeijilu";
		}
	}
}
