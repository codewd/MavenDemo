package com.mewin.entity;

import java.util.Date;

/**
 * 种羊繁育信息
 * @author wangdong
 *
	耳号
	出生日期
	出生重量
	性别
	品种
	胞胎
	受孕方式
	父代耳号
	母代耳号
 */
public class Fanyu {
	private long id;
	private String erbiao;
	private Date csrq;
	private double weight = 0;
	private int sex = 0;//性别，0为公，1为母
	private String pinzhong;
	private String baotai;
	private String syfs;
	private String fuqin;
	private String muqin;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getErbiao() {
		return erbiao;
	}
	public void setErbiao(String erbiao) {
		this.erbiao = erbiao;
	}
	public Date getCsrq() {
		return csrq;
	}
	public void setCsrq(Date csrq) {
		this.csrq = csrq;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getPinzhong() {
		return pinzhong;
	}
	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}
	public String getBaotai() {
		return baotai;
	}
	public void setBaotai(String baotai) {
		this.baotai = baotai;
	}
	public String getSyfs() {
		return syfs;
	}
	public void setSyfs(String syfs) {
		this.syfs = syfs;
	}
	public String getFuqin() {
		return fuqin;
	}
	public void setFuqin(String fuqin) {
		this.fuqin = fuqin;
	}
	public String getMuqin() {
		return muqin;
	}
	public void setMuqin(String muqin) {
		this.muqin = muqin;
	}
	
	
	
	
}
