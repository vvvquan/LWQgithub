package com.neuedu.mapper;

import com.neuedu.model.Tpjl;
import java.util.List;

public interface TpjlMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Tpjl record);

    Tpjl selectByPrimaryKey(Integer tid);

    List<Tpjl> select(int pagenow);
    
    List<Tpjl> selectAll();

    int updateByPrimaryKey(Tpjl record);

	List<Tpjl> search(int num);
}