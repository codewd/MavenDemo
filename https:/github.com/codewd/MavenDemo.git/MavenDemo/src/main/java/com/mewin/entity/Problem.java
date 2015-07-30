package com.mewin.entity;

import java.util.Date;

public class Problem {
	
	private long id;
	private long userId;		
	private String content;	 //内容
	private String fstanderd;//完成标准
	private String fqk;	//完成情况
	private String later;	//领导
	private String email;	//邮箱
	private String account;
	private int flag = 0;	//0:未提交 1:已经提交
	private int coor = 0;	//0:非配合任务 1:配合任务
	
	public int getCoor() {
		return coor;
	}
	public void setCoor(int coor) {
		this.coor = coor;
	}
	private Date stime;	//开始时间	
	private Date ftime;	//结束时间
	private int pass=-9999;	//延时天数 -9999,表示完成
	
	private Date time = new Date();			//注册时间
	
	private String userAccount;
	private String userName;
	private String userNikeName;
	
	private String comment;
	
	
	public int getPass() {
		return pass;
	}
	public void setPass(int pass) {
		this.pass = pass;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getUserAccount() {
		return userAccount;
	}
	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNikeName() {
		return userNikeName;
	}
	public void setUserNikeName(String userNikeName) {
		this.userNikeName = userNikeName;
	}

	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getLater() {
		return later;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public void setLater(String later) {
		this.later = later;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFstanderd() {
		return fstanderd;
	}
	public void setFstanderd(String fstanderd) {
		this.fstanderd = fstanderd;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	public Date getFtime() {
		return ftime;
	}
	public void setFtime(Date ftime) {
		this.ftime = ftime;
	}
	public String getFqk() {
		return fqk;
	}
	public void setFqk(String fqk) {
		this.fqk = fqk;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
