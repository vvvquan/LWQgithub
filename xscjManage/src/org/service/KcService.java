package org.service;

import java.util.List;

import org.model.Kcb;

public interface KcService {
	public List findAll(int pageNow, int pageSize); //找到所有从pageNow开始连续pageSize个的课程
	public int findKcSize();     //课程数量
	public Kcb find(String kch); //根据课程号找到课程
	public void deleteOneKc(String kch); //根据课程号删除课程
	public void saveorupdateKc(Kcb kc);  //添加或修改课程信息
	public void save(Kcb kc2);
}
