package com.neuedu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neuedu.model.Bfjl;
import com.neuedu.model.Buy;
import com.neuedu.model.Bxjl;
import com.neuedu.model.Department;
import com.neuedu.model.Product;
import com.neuedu.model.Provider;
import com.neuedu.service.BuyService;
import com.neuedu.service.DepartmentService;
import com.neuedu.service.ProductService;
import com.neuedu.service.ProviderService;
import com.neuedu.tool.Pager;

@Controller
@RequestMapping("/buy")
public class BuyController {
	@Autowired
	private BuyService buyService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ProviderService providerService;
	@Autowired
	private DepartmentService departmentService;
	
	@RequestMapping("/findAll")
	public String ProductList(@RequestParam String pageNow, HttpServletRequest request) {		
		int pagenow = 1;
		if(pageNow != null && !pageNow.equals("")){
			pagenow = Integer.parseInt(pageNow);
		}
		List<Buy> listBuy = buyService.select(pagenow);
		List<Buy> listall = buyService.selectAll();
		request.setAttribute("listBuy", listBuy);
		Pager page = new Pager(pagenow, listall.size());
		request.setAttribute("page", page);
		return "caigouxinxi";
	}
	
	@RequestMapping("/findById")
	public String updateProductList(@RequestParam Integer buyid, HttpServletRequest request) {		
		Buy buy = buyService.selectByPrimaryKey(buyid);
		List<Provider> provider = providerService.selectAll();
		List<Department> department = departmentService.selectAll();
		List<Product> product = productService.selectAll();
		request.setAttribute("Buy1", buy);
		request.setAttribute("Buy2", provider);
		request.setAttribute("Buy3", department);
		request.setAttribute("Buy4", product);
		return "updatecaigou";
	}
	
	@RequestMapping("/findById2")
	public String findProduct(@RequestParam Integer buyid, HttpServletRequest request) {		
		Buy buy = buyService.selectByPrimaryKey(buyid);
		request.setAttribute("Buy1", buy);			
		return "/caigoudetails";
	}
	
	@RequestMapping("/addcaigou")
	public String addcaigou(HttpServletRequest request) {		
		List<Provider> listProvider = providerService.selectAll();
		List<Department> listDepartment = departmentService.selectAll();
		List<Product> listProduct = productService.selectAll();
		request.setAttribute("listProvider", listProvider);
		request.setAttribute("listProduct", listProduct);
		request.setAttribute("listDepartment", listDepartment);
		return "addcaigou";
	}

	@RequestMapping("/add")
	public String addcaigou2(Integer BUYID, Double BUYCOUNT, String BUYTIME, Integer PROVID, Integer PRODID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(BUYTIME);
		}catch(Exception e){
			e.printStackTrace();
		}
		Buy record = new Buy(BUYID, BUYCOUNT, date, PROVID, PRODID, DEPARTID);
		buyService.insert(record);
		List<Buy> listBuy = buyService.selectAll();
		request.setAttribute("listBuy", listBuy);
		Pager page = new Pager(1, listBuy.size());
		request.setAttribute("page", page);
		return "caigouxinxi";
	}
	
	@RequestMapping("/search")
	public String searchcaigou(@RequestParam String word, HttpServletRequest request) {
		int num = Integer.parseInt(word);
		List<Buy> listBuy = buyService.search(num);
		request.setAttribute("listBuy", listBuy);
		Pager page = new Pager(1, listBuy.size());
		request.setAttribute("page", page);
		return "caigouxinxi";
	}
	
	@RequestMapping("/delete")
	public String deleteProduct(@RequestParam String number, HttpServletRequest request) {
		if(!number.equals("")){
			String[] ids = number.split("-");
			for(int i = 0; i < ids.length; i++){
				int buyid = Integer.parseInt(ids[i]);
				buyService.deleteByPrimaryKey(buyid);
			}
		}
		List<Buy> listBuy = buyService.selectAll();
		request.setAttribute("listBuy", listBuy);
		Pager page = new Pager(1, listBuy.size());
		request.setAttribute("page", page);
		return "caigouxinxi";
	}
	
	@RequestMapping("/update")
	public String updateProduct(Integer BUYID, Double BUYCOUNT, String BUYTIME, Integer PROVID, Integer PRODID, Integer DEPARTID, HttpServletRequest request) {
		Date date = null;
		try{
			date = new SimpleDateFormat("YYYY-MM-DD").parse(BUYTIME);
		}catch(Exception e){
			e.printStackTrace();
			date = new Date();
		}
		Buy record = new Buy(BUYID, BUYCOUNT, date, PROVID, PRODID, DEPARTID);
		buyService.updateByPrimaryKey(record);
		List<Buy> listBuy = buyService.selectAll();
		request.setAttribute("listBuy", listBuy);
		Pager page = new Pager(1, listBuy.size());
		request.setAttribute("page", page);
		return "caigouxinxi";
	}
}
