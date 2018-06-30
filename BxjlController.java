package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Bxjl;
import com.neuedu.service.BxjlService;

@Controller
public class BxjlController {

	@Autowired
	private BxjlService bxjlService;
	
	@RequestMapping("/bxjl/findAll")
	public String findAll(Model model){
		List<Bxjl> list = bxjlService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listBxjl", list);
			return "baoxiujilu";
		}
	}
	
}
