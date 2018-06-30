package com.neuedu.service.impl;

import com.neuedu.service.CategoryService;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.CategoryMapper;
import com.neuedu.mapper.UserAccountMapper;
import com.neuedu.model.Category;
import com.neuedu.model.UserAccount;
import com.neuedu.service.*;
@Service //注解service的实现类
@Transactional//此处不再进行创建SqlSession和提交事务，都已交由Spring去管理了

public class CategoryServiceImpl implements CategoryService{
	@Resource //注解注入
	@Autowired
	private CategoryMapper mapper;
	@Override
	public void AddCategory(Category category) {
		// TODO Auto-generated method stub
		System.out.println(category.toString());
		mapper.AddCategory(category);
	}
	@Override
	public Category findCategory(int cid) {
		// TODO Auto-generated method stub
		return 	mapper.findCategory(cid);
	}
	@Override
	public List<Category> selectAll() {
		// TODO Auto-generated method stub		
		return mapper.selectAll();
	}
	@Override
	public int updateByPrimaryKey(Category record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}
	@Override
	public int deleteByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(cid);
	}
	@Override
	public List<Category> selectByMuhu(String cname) {
		// TODO Auto-generated method stub
		return mapper.selectByMuhu(cname);
	}
}
