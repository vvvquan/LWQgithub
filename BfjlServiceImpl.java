package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BfjlMapper;
import com.neuedu.model.Bfjl;
import com.neuedu.service.BfjlService;

@Service
@Transactional
public class BfjlServiceImpl implements BfjlService{
	@Resource
	BfjlMapper mapper;
	
	@Override
	public List<Bfjl> selectAll(){
		return mapper.selectAll();
	}
}
