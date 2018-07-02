package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Buy;
import com.neuedu.model.Bxjl;

public interface BuyService {
    int deleteByPrimaryKey(Integer buyid);

    int insert(Buy record);

    Buy selectByPrimaryKey(Integer buyid);

    List<Buy> selectAll();

    int updateByPrimaryKey(Buy record);

	List<Buy> select(int pagenow);

	List<Buy> search(int num);
}
