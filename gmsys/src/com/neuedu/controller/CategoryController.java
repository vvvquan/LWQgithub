package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.service.CategoryService;
import com.neuedu.model.*;
//配置MVC的控制器类
@Controller
public class CategoryController {
	//在mvc的控制层整合service服务层
		@Autowired 
		private CategoryService Category;
		//在浏览中通过URL调用这个方法进行登录:/category/add.do
		@RequestMapping("/Category/add.do")
		public String add(String cname,HttpServletRequest request) {
			Category cat = new Category();
			cat.setCname(cname);
			Category.AddCategory(cat);
			
			List<Category> list = Category.selectAll();
			System.out.println(list.size());
			request.setAttribute("listCategory", list);
			return "/zcflxinxi";
		}
		@RequestMapping("/category/findAll.do")
		public String findAll(HttpServletRequest request) {
			List<Category> list = Category.selectAll();
			System.out.println(list.size());
			request.setAttribute("listCategory", list);
			return "/zcflxinxi";
		}
		@RequestMapping("/category/findById.do")
		public String findById(int cid ,HttpServletRequest request) {
			Category cat = Category.findCategory(cid);
			request.setAttribute("category", cat);
			System.out.println(cat.getCid());
			return "/updatezcfl";
		}
		@RequestMapping("/category/findByIdchakan.do")
		public String findByIdchakan(int cid ,HttpServletRequest request) {
			Category cat = Category.findCategory(cid);
			request.setAttribute("category", cat);
			System.out.println(cat.getCid());
			return "/zcfldetails";
		}
		@RequestMapping("/category/update.do")
		public String update(int cid ,String cname,HttpServletRequest request) {
			Category cat = new Category();
			cat.setCid(cid);
			cat.setCname(cname);
			Category.updateByPrimaryKey(cat);
			
			List<Category> list = Category.selectAll();
			System.out.println(list.size());
			request.setAttribute("listCategory", list);
			
			
			return "/zcflxinxi";
		}
		@RequestMapping("/category/delete.do")
		public String delete(int cid ,HttpServletRequest request) {
			Category.deleteByPrimaryKey(cid);
			
			List<Category> list = Category.selectAll();
			System.out.println(list.size());
			request.setAttribute("listCategory", list);
			
			
			return "/zcflxinxi";
		}
		@RequestMapping("/category/findBymh.do")
		public String findBymh(String cname,HttpServletRequest request) {
			cname = cname +'%';
			cname = '%'+cname;
		//	List<Category> list = Category.selectByMuhu(cname);
		//	Category cat = list.get(0);
		//	request.setAttribute("category", cat);
		//	System.out.println(cat.getCid());
			return "/zcfldetails";
		}
}
