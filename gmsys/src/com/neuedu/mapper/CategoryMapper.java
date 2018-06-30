package com.neuedu.mapper;

import com.neuedu.model.Category;
import java.util.List;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer cid);

    List<Category> selectAll();

    int updateByPrimaryKey(Category record);

	void AddCategory(Category category);

	Category findCategory(int cid);
	
    List<Category> selectByMuhu(String cname);

}