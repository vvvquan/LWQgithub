package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.CategoryMapper;
import com.neuedu.mapper.DepartmentMapper;
import com.neuedu.model.Department;
import com.neuedu.service.DepartmentService;
@Service //注解service的实现类
@Transactional//此处不再进行创建SqlSession和提交事务，都已交由Spring去管理了
public class DepartmentServiceImpl implements DepartmentService{
	@Resource //注解注入
	@Autowired
	private DepartmentMapper mapper;
@Override
public int deleteByPrimaryKey(Integer departid) {
	// TODO Auto-generated method stub
	mapper.deleteByPrimaryKey(departid);
	return 0;
}
@Override
	public int insert(Department record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}
@Override
	public List<Department> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}
@Override
	public int updateByPrimaryKey(Department record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}
@Override
	public Department selectByPrimaryKey(Integer departid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(departid);
	}
}
