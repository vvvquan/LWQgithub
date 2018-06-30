package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Bfjl;

public interface BfjlService {
    int deleteByPrimaryKey(Integer sid);

    int insert(Bfjl record);

    Bfjl selectByPrimaryKey(Integer sid);

    List<Bfjl> selectAll();

    int updateByPrimaryKey(Bfjl record);
}
