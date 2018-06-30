package com.neuedu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.model.Area;
import com.neuedu.service.AreaService;

@Controller
public class AreaController {
	@Autowired 
	private AreaService area;
	@RequestMapping("/area/list")
	public String list(HttpServletRequest request) {
		List<Area> list = area.selectAll();
		request.setAttribute("areaList", list);
		return "/quyuxinxi";
	}
}
