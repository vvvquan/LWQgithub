package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.TpjlMapper;
import com.neuedu.model.Tpjl;
import com.neuedu.service.TpjlService;

@Service
@Transactional
public class TpjlServiceImpl implements TpjlService{
	
	@Resource
	TpjlMapper mapper;
	
	@Override
	public List<Tpjl> selectAll(){
		return mapper.selectAll();
	}
	
}
