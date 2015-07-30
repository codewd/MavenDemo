package com.yysd.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	public String login(){
		System.out.println("Ok");
		return "main";
	}

}
