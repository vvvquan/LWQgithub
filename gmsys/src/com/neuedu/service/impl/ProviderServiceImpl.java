package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.ProviderMapper;
import com.neuedu.model.Provider;
import com.neuedu.service.ProviderService;

@Service     //注解service的实现类
@Transactional
public class ProviderServiceImpl implements ProviderService {
	@Resource  //注解注入
	private ProviderMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer provid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(provid);
	}

	@Override
	public int insert(Provider record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Provider selectByPrimaryKey(Integer provid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(provid);
	}

	@Override
	public List<Provider> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Provider record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Provider> select(int pagenow) {
		// TODO Auto-generated method stub
		return mapper.select((pagenow-1)*5);
	}

}
