package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.ProductMapper;
import com.neuedu.model.Product;
import com.neuedu.service.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{
	
	@Resource
	ProductMapper mapper;
	
	@Override
	public List<Product> selectAll(){
		return mapper.selectAll();
	}
}
