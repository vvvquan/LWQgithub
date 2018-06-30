package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Department;

public interface DepartmentService {
	int deleteByPrimaryKey(Integer departid);

    int insert(Department record);

    Department selectByPrimaryKey(Integer departid);

    List<Department> selectAll();

    int updateByPrimaryKey(Department record);
}
