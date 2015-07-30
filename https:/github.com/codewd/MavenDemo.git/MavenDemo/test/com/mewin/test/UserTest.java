package com.mewin.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mewin.service.UserService;

public class UserTest {
	private ApplicationContext ac = new ClassPathXmlApplicationContext(
			"applicationContext.xml");

	@Test
	public void t1() {
		UserService us = (UserService) ac.getBean("userServiceImpl");
		
		System.out.println(us.getUnderLine("k2").size());
		
	}

}
