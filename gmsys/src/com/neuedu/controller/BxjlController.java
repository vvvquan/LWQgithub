package com.neuedu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Balance;
import com.neuedu.model.Bfjl;
import com.neuedu.model.Buy;
import com.neuedu.model.Bxjl;
import com.neuedu.model.Department;
import com.neuedu.model.Product;
import com.neuedu.model.Provider;
import com.neuedu.service.BalanceService;
import com.neuedu.service.BuyService;
import com.neuedu.service.BxjlService;
import com.neuedu.service.DepartmentService;
import com.neuedu.service.ProductService;
import com.neuedu.service.ProviderService;

@Controller
public class BxjlController {
	@Autowired
	private BxjlService bxjlService;
	@Autowired
	private BalanceService balanceService;
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping("/Bxjl/findById")
	public String updateProductList(@RequestParam Integer repairid, HttpServletRequest request) {
		Bxjl bxjl = bxjlService.selectByPrimaryKey(repairid);
		List<Balance> balance = balanceService.selectAll();
		List<Department> department = departmentService.selectAll();
		request.setAttribute("Bxjl", bxjl);
		request.setAttribute("listBalance", balance);
		request.setAttribute("listDepartment", department);
		return "updatebaoxiu";
	}
	
	@RequestMapping("/Bxjl/findById2")
	public String findProduct(@RequestParam Integer repairid, HttpServletRequest request) {		
		Bxjl bxjl = bxjlService.selectByPrimaryKey(repairid);
		List<Bxjl> listBxjl = new ArrayList();
		listBxjl.add(bxjl);
		request.setAttribute("listBxjl", listBxjl);				
		return "baoxiujilu";
	}
	
	@RequestMapping("/Bxjl/addbaoxiu")
	public String addbaoxiu(HttpServletRequest request) {		
		List<Balance> listBalance = balanceService.selectAll();
		List<Department> listDepartment = departmentService.selectAll();
		request.setAttribute("listBalance", listBalance);
		request.setAttribute("listDepartment", listDepartment);
		return "addbaoxiu";
	}

	@RequestMapping("/Bxjl/add")
	public String addbaoxiu2(Integer REPAIRID, Double RCOUNT, String RTIME, Integer BID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(RTIME);
		}catch(Exception e){
			e.printStackTrace();
		}
		Bxjl record = new Bxjl(REPAIRID, RCOUNT, date, BID, DEPARTID);
		bxjlService.insert(record);
		List<Bxjl> listBxjl = bxjlService.selectAll();
		request.setAttribute("listBxjl", listBxjl);
		return "baoxiuxinxi";
	}
	
	@RequestMapping("/Bxjl/delete")
	public String deleteProduct(@RequestParam String number, HttpServletRequest request) {
		if(!number.equals("")){
			String[] ids = number.split("-");
			for(int i = 0; i < ids.length; i++){
				int repairid = Integer.parseInt(ids[i]);
				bxjlService.deleteByPrimaryKey(repairid);
			}
		}
		List<Bxjl> listBxjl = bxjlService.selectAll();
		request.setAttribute("listBxjl", listBxjl);			
		return "baoxiuxinxi";
	}
	
	@RequestMapping("/Bxjl/update")
	public String updateProduct(Integer REPAIRID, Double RCOUNT, String RTIME, Integer BID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(RTIME);
		}catch(Exception e){
			e.printStackTrace();
			date = new Date();
		}
		Bxjl record = new Bxjl(REPAIRID, RCOUNT, date, BID, DEPARTID);
		bxjlService.updateByPrimaryKey(record);
		List<Bxjl> listBxjl = bxjlService.selectAll();
		request.setAttribute("listBxjl", listBxjl);			
		return "baoxiuxinxi";
	}
	
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
