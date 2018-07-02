package com.neuedu.mapper;

import com.neuedu.model.Balance;
import java.util.List;

public interface BalanceMapper {
    int deleteByPrimaryKey(Integer bid);

    int insert(Balance record);

    Balance selectByPrimaryKey(Integer bid);

    List<Balance> selectAll();
    
    List<Balance> select(int pagenow);

    int updateByPrimaryKey(Balance record);
}