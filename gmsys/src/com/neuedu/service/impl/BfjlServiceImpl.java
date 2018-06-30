package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BfjlMapper;
import com.neuedu.mapper.UserAccountMapper;
import com.neuedu.model.Bfjl;
import com.neuedu.service.BfjlService;

@Service     //注解service的实现类
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了
public class BfjlServiceImpl implements BfjlService {
	@Resource  //注解注入
	private BfjlMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer sid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(sid);
	}

	@Override
	public int insert(Bfjl record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Bfjl selectByPrimaryKey(Integer sid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(sid);
	}

	@Override
	public List<Bfjl> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Bfjl record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

}
