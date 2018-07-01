package org.dao;
import java.util.*;
import org.model.*;
public interface KcDAO {
	public List findAll(int pageNow, int pageSize); //查询所有课程信息
	public int findKcSize();	//查询一共有多少条课程信息
	public Kcb find(String kch);	//根据课程号查找课程信息
	public void deleteOneKc(String kch); //根据课程号删除课程信息
	public void saveorupdateKc(Kcb kc);  //根据课程号添加或修改课程信息
	public void save(Kcb kc);
}
