package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Product;
import com.neuedu.service.ProductService;


@Controller
public class ProductController {

	@Autowired
	ProductService productService;
	
	@RequestMapping("/product/findAll")
	public String findAll(Model model){
		List<Product> list = productService.selectAll();
		if(list == null){
			return "index";
		}else{
			model.addAttribute("listProduct", list);
			return "productxinxi";
		}
	}
}
