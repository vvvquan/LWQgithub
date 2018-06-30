package com.neuedu.mapper;

import com.neuedu.model.Tpjl;
import java.util.List;

public interface TpjlMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Tpjl record);

    Tpjl selectByPrimaryKey(Integer tid);

    List<Tpjl> selectAll();

    int updateByPrimaryKey(Tpjl record);
}