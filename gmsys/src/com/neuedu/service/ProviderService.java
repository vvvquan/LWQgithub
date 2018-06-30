package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Provider;

public interface ProviderService {
    int deleteByPrimaryKey(Integer provid);

    int insert(Provider record);

    Provider selectByPrimaryKey(Integer provid);

    List<Provider> selectAll();

    int updateByPrimaryKey(Provider record);
}
