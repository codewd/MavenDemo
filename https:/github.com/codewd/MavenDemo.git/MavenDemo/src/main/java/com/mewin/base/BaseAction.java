package com.mewin.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.mewin.entity.User;
import com.mewin.service.BsheepService;
import com.mewin.service.FangyiService;
import com.mewin.service.FanyuService;
import com.mewin.service.FileUpService;
import com.mewin.service.GongchengService;
import com.mewin.service.GongyangService;
import com.mewin.service.PeitaiService;
import com.mewin.service.ShoujingService;
import com.mewin.service.TuzaiService;
import com.mewin.service.UserService;
import com.mewin.service.XiangmuService;
import com.mewin.service.YunshuService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T>,ServletRequestAware, ServletResponseAware {

	private static final long serialVersionUID = 1L;

	protected HttpServletResponse response;
	protected HttpServletRequest request;

	//ModelDriven支持
	protected T model;
	
	public BaseAction() {
		try {
			// 通过反射获取model的真实类型
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			// 通过反射创建model的实例
			model = clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public T getModel() {
		return model;
	}
	
	@Resource
	protected UserService userService;
	
	
	public void put(String key,Object value){
		ActionContext.getContext().put(key, value);
	}
	public void sput(String key,Object value){
		ActionContext.getContext().getSession().put(key, value);
	}
	public void push(Object value){
		ActionContext.getContext().getValueStack().push(value);
	}
	public Object get(String key){
		return ActionContext.getContext().getSession().get(key);
	}
	public String getParam(String key){
		return ServletActionContext.getRequest().getParameter(key);
	}
	public User currentUser(){
		return (User)get("user");
	}
	public void rput(String key,Object o){
		 ServletActionContext.getRequest().setAttribute(key, o);
	}
	public void sremove(String key){
		ActionContext.getContext().getSession().remove(key);
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	// ============== 分页用的参数 =============

		protected int pageNum = 1; // 当前页
		protected int pageSize = 10; // 每页显示多少条记录

		public int getPageNum() {
			return pageNum;
		}

		public void setPageNum(int pageNum) {
			this.pageNum = pageNum;
		}

		public int getPageSize() {
			return pageSize;
		}

		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
	
}
