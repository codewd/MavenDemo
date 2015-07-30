package com.mewin.test;

import org.junit.Test;

public class TestDishCreate {
	@Test
	public void t1(){
		String s = "nihao\njlkj";
		System.out.println(delEnter(s));
	}
	public String delEnter(String str){
		str = str.replaceAll("[\\t\\n\\r]", ";");
		return str;
	}

}
