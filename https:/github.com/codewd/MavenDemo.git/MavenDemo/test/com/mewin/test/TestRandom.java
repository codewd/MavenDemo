package com.mewin.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import org.junit.Test;

public class TestRandom {
	
	@Test
	public void test1(){
		
//		String s = "早餐|午餐|晚餐";
//		
//		String ss[] = s.split("\\|");
//		
//		for(String s1 : ss){
//			System.out.println(s1);
//		}
		
		for(int i=0;i<100000;i++){
			Random r = new Random();
			int a = r.nextInt(13);
			if(a<=0 || a==13){
			}
			System.out.println(a);
		}
	}
	@Test
	public void test2() throws ParseException{
		
		Date d = new Date();
		System.out.println(d.toLocaleString());
		//System.out.println(new SimpleDateFormat("yyyy,mm,dd").parse("2014,02,02"));
		
	}
	
	public double[] doubleSub(double[] a,double[] b){
		
		return new double[]{6,5,4,3,2,7};
	}
	@Test
	public void test3() {
			
		String r = "3";
		for(String s :r.split(",")){
			System.out.println(s);
		}
		
	}
}
