package com.neuedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.BuyMapper;
import com.neuedu.model.Buy;
import com.neuedu.model.Bxjl;
import com.neuedu.service.BuyService;

@Service     //ע��service��ʵ����
@Transactional  //�˴����ٽ��д���SqlSession���ύ���񣬶��ѽ���springȥ������
public class BuyServiceImpl implements BuyService {
	@Resource  //ע��ע��
	private BuyMapper mapper;
	
	@Override
	public int deleteByPrimaryKey(Integer buyid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(buyid);
	}

	@Override
	public int insert(Buy record) {
		// TODO Auto-generated method stub
		return mapper.insert(record);
	}

	@Override
	public Buy selectByPrimaryKey(Integer buyid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(buyid);
	}

	@Override
	public List<Buy> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Buy record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Buy> select(int pagenow) {
		// TODO Auto-generated method stub
		return mapper.select((pagenow-1)*5);
	}

	@Override
	public List<Buy> search(int num) {
		// TODO Auto-generated method stub
		return mapper.search(num);
	}

}
