package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BalanceMapper;
import com.neuedu.mapper.CategoryMapper;
import com.neuedu.model.Balance;
import com.neuedu.service.BalanceService;

@Service //注解service的实现类
@Transactional//此处不再进行创建SqlSession和提交事务，都已交由Spring去管理了

public class BalanceServiceImpl implements BalanceService{
	@Resource //注解注入
	@Autowired
	private BalanceMapper mapper;
	@Override
	public int insert(Balance record) {
		return mapper.insert(record);
	}
	@Override
	public int deleteByPrimaryKey(Integer bid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(bid);
	}
	@Override
	public Balance selectByPrimaryKey(Integer bid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(bid);
	}
	@Override
	public List<Balance> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}
	@Override
	public int updateByPrimaryKey(Balance record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}
}
