package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Balance;

public interface BalanceService {
    int deleteByPrimaryKey(Integer bid);

    int insert(Balance record);

    Balance selectByPrimaryKey(Integer bid);

    List<Balance> selectAll();

    int updateByPrimaryKey(Balance record);
}
