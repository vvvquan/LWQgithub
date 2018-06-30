package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Category;

public interface CategoryService {
	public void AddCategory(Category category);
	public Category findCategory(int cid);
	public    List<Category> selectAll();
    public  int updateByPrimaryKey(Category record);
    public     int deleteByPrimaryKey(Integer cid);
    public  List<Category> selectByMuhu(String cname);

}
