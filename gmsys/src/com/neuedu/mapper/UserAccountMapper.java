package com.neuedu.mapper;

import com.neuedu.model.UserAccount;
import java.util.List;

public interface UserAccountMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(UserAccount record);

    UserAccount selectByPrimaryKey(Integer userid);

    List<UserAccount> selectAll();

    int updateByPrimaryKey(UserAccount record);

	UserAccount findUserByAccount(String string);
}