package com.mewin.entity;

import java.util.Date;

/**
 * 种公羊基本信息
 * @author wangdong
	耳号
	出生日期
	出生重量
	性别
	品种
	胸围
	体高
	体长
	绒长
	配种情况
	父代耳号
	母代耳号
 */
public class Gongyang {
	private long id;
	private String erbiao;
	private Date born;
	private double weight = 0;
	private int sex =0;//性别，0为公，1为母
	private String pinzhong;
	private String xiongwei;
	private String tigao;
	private String tichang;
	private String fuqin = "";
	private double rongchang = 0d;
	private double rongxi = 0d;
	private String muqin = "";
	private String peizhong;
	private String fangyi;
	
	private long userId;
	
	
	public double getRongxi() {
		return rongxi;
	}
	public void setRongxi(double rongxi) {
		this.rongxi = rongxi;
	}
	public String getFangyi() {
		return fangyi;
	}
	public void setFangyi(String fangyi) {
		this.fangyi = fangyi;
	}
	public String getPeizhong() {
		return peizhong;
	}
	public void setPeizhong(String peizhong) {
		this.peizhong = peizhong;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
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
	public Date getBorn() {
		return born;
	}
	public void setBorn(Date born) {
		this.born = born;
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
	public String getXiongwei() {
		return xiongwei;
	}
	public void setXiongwei(String xiongwei) {
		this.xiongwei = xiongwei;
	}
	public String getTigao() {
		return tigao;
	}
	public void setTigao(String tigao) {
		this.tigao = tigao;
	}
	public String getTichang() {
		return tichang;
	}
	public void setTichang(String tichang) {
		this.tichang = tichang;
	}
	public double getRongchang() {
		return rongchang;
	}
	public void setRongchang(double rongchang) {
		this.rongchang = rongchang;
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
