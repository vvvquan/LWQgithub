package com.neuedu.mapper;

import com.neuedu.model.Cgjl;
import java.util.List;

public interface CgjlMapper {
    int deleteByPrimaryKey(Integer buyid);

    int insert(Cgjl record);

    Cgjl selectByPrimaryKey(Integer buyid);

    List<Cgjl> selectAll();

    int updateByPrimaryKey(Cgjl record);
}