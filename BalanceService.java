package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Balance;

public interface BalanceService {

	List<Balance> selectAll();
	Balance selectByPrimaryKey(Integer bid);
}
