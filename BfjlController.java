package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Bfjl;
import com.neuedu.service.BfjlService;

@Controller
public class BfjlController {
	
	@Autowired
	BfjlService bfjlService;
	
	@RequestMapping("/bfjl/findAll")
	public String findAll(Model model){
		List<Bfjl> list = bfjlService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listBfjl", list);
			return "baofeijilu";
		}
	}
}
