package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BfjlMapper;
import com.neuedu.mapper.TpjlMapper;
import com.neuedu.model.Tpjl;
import com.neuedu.service.TpjlService;

@Service     //注解service的实现类
@Transactional  //此处不再进行创建SqlSession和提交事务，都已交由spring去管理了
public class TpjlServiceImpl implements TpjlService {
	@Resource  //注解注入
	private TpjlMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer tid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(tid);
	}

	@Override
	public int insert(Tpjl record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Tpjl selectByPrimaryKey(Integer tid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(tid);
	}

	@Override
	public List<Tpjl> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Tpjl record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Tpjl> select(int pagenow) {
		// TODO Auto-generated method stub
		return mapper.select((pagenow-1)*5);
	}

	@Override
	public List<Tpjl> search(int num) {
		// TODO Auto-generated method stub
		return mapper.search(num);
	}

}
