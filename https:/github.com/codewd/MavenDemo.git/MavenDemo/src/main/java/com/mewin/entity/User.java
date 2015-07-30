package com.mewin.entity;

import java.util.Date;

public class User {
	
	private long id;
	private String account;		//账号
	private String psd;			//密码
	private String name;		//真实姓名
	private String nikeName;	//花名
	private String phone;		//电话
	private String zw;			//职务
	private int part=-1;		//部门
	private String description;	//描述
	private String leader;	//领导
	private String email;	//邮箱
	private int visable = 1;	//1:显示 2:不显示
	
	private Date time = new Date();			//注册时间
	
	
	public int getVisable() {
		return visable;
	}
	public void setVisable(int visable) {
		this.visable = visable;
	}
	public String getZw() {
		return zw;
	}
	public void setZw(String zw) {
		this.zw = zw;
	}
	
	public int getPart() {
		return part;
	}
	public void setPart(int part) {
		this.part = part;
	}
	public String getNikeName() {
		return nikeName;
	}
	public void setNikeName(String nikeName) {
		this.nikeName = nikeName;
	}
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPsd() {
		return psd;
	}
	public void setPsd(String psd) {
		this.psd = psd;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getTime() {
		return time;
	}
	
}
