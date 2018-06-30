package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Provider;

public interface ProviderService {
	List<Provider> selectAll();
	Provider selectByPrimaryKey(Integer provid);
	int updateByPrimaryKey(Provider record);
	int insert(Provider record);
}
