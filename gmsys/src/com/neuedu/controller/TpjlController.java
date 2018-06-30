package com.neuedu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Area;
import com.neuedu.model.Balance;
import com.neuedu.model.Tpjl;
import com.neuedu.model.Department;
import com.neuedu.service.AreaService;
import com.neuedu.service.BalanceService;
import com.neuedu.service.TpjlService;
import com.neuedu.service.DepartmentService;

@Controller
@RequestMapping("/Tpjl")
public class TpjlController {
	@Autowired
	private TpjlService tpjlService;
	@Autowired
	private BalanceService balanceService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping("/findById")
	public String updateProductList(@RequestParam Integer tid, HttpServletRequest request) {
		Tpjl tpjl = tpjlService.selectByPrimaryKey(tid);
		List<Balance> balance = balanceService.selectAll();
		List<Department> department = departmentService.selectAll();
		List<Area> area = areaService.selectAll();
		request.setAttribute("Tpjl", tpjl);
		request.setAttribute("listBalance", balance);
		request.setAttribute("listDepartment", department);
		request.setAttribute("listArea", area);
		return "updatetiaopei";
	}
	
	@RequestMapping("/findById2")
	public String findProduct(@RequestParam Integer tid, HttpServletRequest request) {		
		Tpjl tpjl = tpjlService.selectByPrimaryKey(tid);
		request.setAttribute("Tpjl", tpjl);			
		return "tiaopeijilu";
	}
	
	@RequestMapping("/addtiaopei")
	public String addbaoxiu(HttpServletRequest request) {
		List<Balance> listBalance = balanceService.selectAll();
		List<Department> listDepartment = departmentService.selectAll();
		List<Area> area = areaService.selectAll();
		request.setAttribute("listBalance", listBalance);
		request.setAttribute("listDepartment", listDepartment);
		request.setAttribute("listArea", area);
		return "addtiaopei";
	}

	@RequestMapping("/add")
	public String addbaoxiu2(Integer TID, Double TCOUNT, String TRTIME, Integer BID, Integer DEPARTID, Integer AREAID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(TRTIME);
		}catch(Exception e){
			e.printStackTrace();
		}
		Tpjl record = new Tpjl(TID, TCOUNT, date, BID, DEPARTID, AREAID);
		tpjlService.insert(record);
		List<Tpjl> listTpjl = tpjlService.selectAll();
		request.setAttribute("listTpjl", listTpjl);
		return "tiaopeixinxi";
	}
	
	@RequestMapping("/delete")
	public String deleteProduct(@RequestParam String number, HttpServletRequest request) {
		if(!number.equals("")){
			String[] ids = number.split("-");
			for(int i = 0; i < ids.length; i++){
				int tid = Integer.parseInt(ids[i]);
				tpjlService.deleteByPrimaryKey(tid);
			}
		}
		List<Tpjl> listTpjl = tpjlService.selectAll();
		request.setAttribute("listTpjl", listTpjl);			
		return "tiaopeixinxi";
	}
	
	@RequestMapping("/update")
	public String updateProduct(Integer TID, Double TCOUNT, String TRTIME, Integer BID, Integer DEPARTID, Integer AREAID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(TRTIME);
		}catch(Exception e){
			e.printStackTrace();
			date = new Date();
		}
		Tpjl record = new Tpjl(TID, TCOUNT, date, BID, DEPARTID, AREAID);
		tpjlService.updateByPrimaryKey(record);
		List<Tpjl> listTpjl = tpjlService.selectAll();
		request.setAttribute("listTpjl", listTpjl);			
		return "tiaopeixinxi";
	}
}
