package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Bxjl;

public interface BxjlService {
    int deleteByPrimaryKey(Integer repairid);

    int insert(Bxjl record);

    Bxjl selectByPrimaryKey(Integer repairid);

    List<Bxjl> selectAll();

    int updateByPrimaryKey(Bxjl record);
}
