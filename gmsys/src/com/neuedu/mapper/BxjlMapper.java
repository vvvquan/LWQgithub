package com.neuedu.mapper;

import com.neuedu.model.Bxjl;
import java.util.List;

public interface BxjlMapper {
    int deleteByPrimaryKey(Integer repairid);

    int insert(Bxjl record);

    Bxjl selectByPrimaryKey(Integer repairid);

    List<Bxjl> selectAll();

    int updateByPrimaryKey(Bxjl record);
}