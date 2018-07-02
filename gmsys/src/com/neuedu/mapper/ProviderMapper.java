package com.neuedu.mapper;

import com.neuedu.model.Provider;
import java.util.List;

public interface ProviderMapper {
    int deleteByPrimaryKey(Integer provid);

    int insert(Provider record);

    Provider selectByPrimaryKey(Integer provid);

    List<Provider> selectAll();
    
    List<Provider> select(int pagenow);

    int updateByPrimaryKey(Provider record);
}