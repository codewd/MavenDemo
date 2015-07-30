package com.mewin.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mewin.entity.User;
import com.mewin.service.UserService;


public class TestUser {
	
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	@Test
	public void testCreateCategory(){
		User user = new User();
		user.setAccount("wd");
		user.setPsd("wd");
		UserService us = (UserService) ac.getBean("userServiceImpl");
		us.save(user);
		
	}
	
}












