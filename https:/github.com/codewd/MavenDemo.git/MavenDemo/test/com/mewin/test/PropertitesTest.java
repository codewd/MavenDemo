package com.mewin.test;

import java.io.InputStream;
import java.util.Properties;

import org.junit.Test;

import com.mewin.entity.Problem;

public class PropertitesTest {
	@Test
	public void t1() throws Exception{
		InputStream in = Problem.class.getResourceAsStream("field.properties");  
		Properties p = new Properties();  
		p.load(in); 
		System.out.println(p.getProperty("problem"));
	}
}
