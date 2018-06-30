package com.neuedu.mapper;

import com.neuedu.model.Area;
import java.util.List;

public interface AreaMapper {
    int deleteByPrimaryKey(Integer areaid);

    int insert(Area record);

    Area selectByPrimaryKey(Integer areaid);

    List<Area> selectAll();

    int updateByPrimaryKey(Area record);
}