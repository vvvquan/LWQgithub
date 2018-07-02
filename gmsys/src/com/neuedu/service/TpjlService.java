package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Tpjl;

public interface TpjlService {
    int deleteByPrimaryKey(Integer tid);

    int insert(Tpjl record);

    Tpjl selectByPrimaryKey(Integer tid);

    List<Tpjl> select(int pagenow);
    
    List<Tpjl> selectAll();

    int updateByPrimaryKey(Tpjl record);

	List<Tpjl> search(int num);
}
