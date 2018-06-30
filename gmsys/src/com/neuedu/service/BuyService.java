package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Buy;

public interface BuyService {
    int deleteByPrimaryKey(Integer buyid);

    int insert(Buy record);

    Buy selectByPrimaryKey(Integer buyid);

    List<Buy> selectAll();

    int updateByPrimaryKey(Buy record);
}
