package com.neuedu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Balance;
import com.neuedu.model.Bfjl;
import com.neuedu.model.Department;
import com.neuedu.service.BalanceService;
import com.neuedu.service.BfjlService;
import com.neuedu.service.DepartmentService;

@Controller
@RequestMapping("/Bfjl")
public class BfjlController {
	@Autowired
	private BfjlService bfjlService;
	@Autowired
	private BalanceService balanceService;
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping("/findById")
	public String updateProductList(@RequestParam Integer sid, HttpServletRequest request) {
		Bfjl bfjl = bfjlService.selectByPrimaryKey(sid);
		List<Balance> balance = balanceService.selectAll();
		List<Department> department = departmentService.selectAll();
		request.setAttribute("Bfjl", bfjl);
		request.setAttribute("listBalance", balance);
		request.setAttribute("listDepartment", department);
		return "updatebaofei";
	}
	
	@RequestMapping("/findById2")
	public String findProduct(@RequestParam Integer sid, HttpServletRequest request) {		
		Bfjl bfjl = bfjlService.selectByPrimaryKey(sid);
		request.setAttribute("Bfjl", bfjl);			
		return "baofeijilu";
	}
	
	@RequestMapping("/addbaofei")
	public String addbaoxiu(HttpServletRequest request) {		
		List<Balance> listBalance = balanceService.selectAll();
		List<Department> listDepartment = departmentService.selectAll();
		request.setAttribute("listBalance", listBalance);
		request.setAttribute("listDepartment", listDepartment);
		return "addbaofei";
	}

	@RequestMapping("/add")
	public String addbaoxiu2(Integer SID, Double SCOUNT, String STIME, Integer BID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(STIME);
		}catch(Exception e){
			e.printStackTrace();
		}
		Bfjl record = new Bfjl(SID, SCOUNT, date, BID, DEPARTID);
		bfjlService.insert(record);
		List<Bfjl> listBfjl = bfjlService.selectAll();
		request.setAttribute("listBfjl", listBfjl);
		return "baofeixinxi";
	}
	
	@RequestMapping("/delete")
	public String deleteProduct(@RequestParam String number, HttpServletRequest request) {
		if(!number.equals("")){
			String[] ids = number.split("-");
			for(int i = 0; i < ids.length; i++){
				int sid = Integer.parseInt(ids[i]);
				bfjlService.deleteByPrimaryKey(sid);
			}
		}
		List<Bfjl> listBfjl = bfjlService.selectAll();
		request.setAttribute("listBfjl", listBfjl);			
		return "baofeixinxi";
	}
	
	@RequestMapping("/update")
	public String updateProduct(Integer SID, Double SCOUNT, String STIME, Integer BID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(STIME);
		}catch(Exception e){
			e.printStackTrace();
			date = new Date();
		}
		Bfjl record = new Bfjl(SID, SCOUNT, date, BID, DEPARTID);
		bfjlService.updateByPrimaryKey(record);
		List<Bfjl> listBfjl = bfjlService.selectAll();
		request.setAttribute("listBfjl", listBfjl);			
		return "baofeixinxi";
	}
}
