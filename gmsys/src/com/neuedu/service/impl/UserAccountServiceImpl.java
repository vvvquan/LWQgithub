package com.neuedu.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.UserAccountMapper;
import com.neuedu.model.UserAccount;
import com.neuedu.service.*;
@Service //注解service的实现类
@Transactional//此处不再进行创建SqlSession和提交事务，都已交由Spring去管理了

public class UserAccountServiceImpl implements UserAccountService{
@Resource //注解注入
private UserAccountMapper mapper;
@Override//重新定义接口中定义的方法
	public UserAccount findUserByAccount(String account) {
		// TODO Auto-generated method stub
		return mapper.findUserByAccount(account);
	}
}
