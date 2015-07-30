package com.mewin.interceptor;

import javax.annotation.Resource;


import com.mewin.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoginTimeout implements Interceptor {
	

	public void destroy() {
	}

	public void init() {
	}

	public String intercept(ActionInvocation invocation) throws Exception {
		
		User user = (User) ActionContext.getContext().getSession().get("user");
		if(user != null){
			return invocation.invoke();
		}
		ActionContext.getContext().put("msg","登陆超时，请重新登陆");
		return "login";
	}

}
