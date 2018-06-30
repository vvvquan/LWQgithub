package com.neuedu.mapper;

import com.neuedu.model.Product;
import java.util.List;

public interface ProductMapper {
    int deleteByPrimaryKey(Integer prodid);

    int insert(Product record);

    Product selectByPrimaryKey(Integer prodid);

    List<Product> selectAll();

    int updateByPrimaryKey(Product record);
}