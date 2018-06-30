package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BxjlMapper;
import com.neuedu.model.Bxjl;
import com.neuedu.service.BxjlService;

@Service
@Transactional
public class BxjlServiceImpl implements BxjlService{

	@Resource
	BxjlMapper mapper;
	
	@Override
	public List<Bxjl> selectAll(){
		return mapper.selectAll();
	}
}
