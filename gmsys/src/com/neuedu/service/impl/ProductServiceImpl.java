package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.ProductMapper;
import com.neuedu.mapper.UserAccountMapper;
import com.neuedu.model.Product;
import com.neuedu.service.ProductService;

@Service     //注解service的实现类
@Transactional
public class ProductServiceImpl implements ProductService {
	@Resource  //注解注入
	private ProductMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer prodid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(prodid);
	}

	@Override
	public int insert(Product record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Product selectByPrimaryKey(Integer prodid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(prodid);
	}

	@Override
	public List<Product> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Product record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

}
