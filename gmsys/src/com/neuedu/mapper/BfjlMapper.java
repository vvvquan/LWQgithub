package com.neuedu.mapper;

import com.neuedu.model.Bfjl;
import java.util.List;

public interface BfjlMapper {
    int deleteByPrimaryKey(Integer sid);

    int insert(Bfjl record);

    Bfjl selectByPrimaryKey(Integer sid);

    List<Bfjl> selectAll();

    int updateByPrimaryKey(Bfjl record);
}