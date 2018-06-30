package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.ProviderMapper;
import com.neuedu.model.Provider;
import com.neuedu.service.ProviderService;

@Service
@Transactional
public class ProviderServiceImpl implements ProviderService{
	
	@Resource
	private ProviderMapper mapper;
	
	@Override
	public List<Provider> selectAll(){
		return mapper.selectAll();
	}
	
	@Override
	public Provider selectByPrimaryKey(Integer provid){
		return mapper.selectByPrimaryKey(provid);
	}
	
	@Override
	public int updateByPrimaryKey(Provider record){
		return mapper.updateByPrimaryKey(record);
	}
	
	@Override
	public int insert(Provider record){
		return mapper.insert(record);
	}
}
