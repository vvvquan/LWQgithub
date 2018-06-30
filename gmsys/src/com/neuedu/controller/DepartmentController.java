package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Category;
import com.neuedu.model.Department;
import com.neuedu.service.CategoryService;
import com.neuedu.service.DepartmentService;

@Controller

public class DepartmentController {
	@Autowired 
	private DepartmentService department;
	@RequestMapping("/department/findAll.do")
	public String findAll(HttpServletRequest request) {
		List<Department> list = department.selectAll();
		request.setAttribute("listDepartment", list);
		return "/bmxinxi";
	}
	@RequestMapping("/department/findByIdchakan.do")
	public String FindByIdchakan(int departid,HttpServletRequest request) {
		Department depart = department.selectByPrimaryKey(departid);
		request.setAttribute("department", depart);
		return "/bmdetails";
	}
}
