package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.AreaMapper;
import com.neuedu.model.Area;
import com.neuedu.service.AreaService;
@Service //注解service的实现类
@Transactional//此处不再进行创建SqlSession和提交事务，都已交由Spring去管理了
public class AreaServiceImpl implements AreaService{
	@Resource //注解注入
	@Autowired
	private AreaMapper mapper;
@Override
public List<Area> selectAll() {
	// TODO Auto-generated method stub
	return mapper.selectAll();
}
}
