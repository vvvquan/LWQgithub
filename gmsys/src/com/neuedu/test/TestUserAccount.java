package com.neuedu.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.neuedu.mapper.UserAccountMapper;
import com.neuedu.model.UserAccount;


@RunWith(SpringJUnit4ClassRunner.class)  //使用junit 4进行测试
@ContextConfiguration("classpath:config/spring-common.xml")//Spring整合JUnit4测试时，使用注解引入配置文件
public class TestUserAccount {	
	@Autowired
	UserAccountMapper UserAccountMapper;
	
	@Transactional
	@Test
	public void testFindUserByAccount() {
		UserAccount userAccount = UserAccountMapper.findUserByAccount("admin");
		System.out.println(userAccount.getUsername());
	}

}

