package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.CgjlMapper;
import com.neuedu.model.Cgjl;
import com.neuedu.service.CgjlService;

@Service
@Transactional
public class CgjlServiceImpl implements CgjlService{
	
	@Resource
	CgjlMapper mapper;
	
	@Override
	public List<Cgjl> selectAll(){
		return mapper.selectAll();
	}
	
	@Override
	public Cgjl selectByPrimaryKey(Integer buyid){
		return mapper.selectByPrimaryKey(buyid);
	}
}
