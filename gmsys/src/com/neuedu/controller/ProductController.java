package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Buy;
import com.neuedu.model.Product;
import com.neuedu.service.ProductService;
import com.neuedu.tool.Pager;


@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	@RequestMapping("/product/findAll")
	public String findAll(Model model, @RequestParam String pageNow, HttpServletRequest request){
		int pagenow = Integer.parseInt(pageNow);
		List<Product> list = productService.select(pagenow);
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listProduct", list);
			List<Product> listall = productService.selectAll();
			Pager page = new Pager(pagenow, listall.size());
			request.setAttribute("page", page);
			return "productxinxi";
		}
	}
}
