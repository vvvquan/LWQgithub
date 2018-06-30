package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.model.Balance;
import com.neuedu.service.BalanceService;
import com.neuedu.mapper.BalanceMapper;

@Service
@Transactional
public class BalanceServiceImpl implements BalanceService{
	
	@Resource
	private BalanceMapper mapper;
	
	@Override
	public List<Balance> selectAll(){
		return mapper.selectAll();
	}
	
	@Override
	public Balance selectByPrimaryKey(Integer bid){
		return mapper.selectByPrimaryKey(bid);
	}
}

