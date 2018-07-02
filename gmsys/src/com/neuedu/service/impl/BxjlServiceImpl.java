package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BxjlMapper;
import com.neuedu.model.Bxjl;
import com.neuedu.service.BxjlService;

@Service     //ע��service��ʵ����
@Transactional  //�˴����ٽ��д���SqlSession���ύ���񣬶��ѽ���springȥ������
public class BxjlServiceImpl implements BxjlService {
	@Resource  //ע��ע��
	private BxjlMapper mapper;
	@Override
	public int deleteByPrimaryKey(Integer repairid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(repairid);
	}

	@Override
	public int insert(Bxjl record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Bxjl selectByPrimaryKey(Integer repairid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(repairid);
	}

	@Override
	public List<Bxjl> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Bxjl record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Bxjl> select(int pagenow) {
		// TODO Auto-generated method stub
		return mapper.select((pagenow-1)*5);
	}

	@Override
	public List<Bxjl> search(int num) {
		// TODO Auto-generated method stub
		return mapper.search(num);
	}

}
