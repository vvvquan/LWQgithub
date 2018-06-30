package com.neuedu.service;

import java.util.List;

import com.neuedu.model.Product;

public interface ProductService {
    int deleteByPrimaryKey(Integer prodid);

    int insert(Product record);

    Product selectByPrimaryKey(Integer prodid);

    List<Product> selectAll();

    int updateByPrimaryKey(Product record);
}
