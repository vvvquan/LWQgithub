package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Cgjl;

public interface CgjlService {

	List<Cgjl> selectAll();
	Cgjl selectByPrimaryKey(Integer buyid);
}
