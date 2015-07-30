package com.mewin.entity;

import java.util.Date;

/**
 * 屠宰信息
 * @author wangdong
 	耳号
	屠宰日期
	加工日期
	加工部位
	加工部位重量
 */
public class Tuzai {
	private long id;
	private String erbiao;
	private Date riqi;
	private Date jgrq;
	private String buwei;
	private String weight;
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
	
	public Date getRiqi() {
		return riqi;
	}
	public void setRiqi(Date riqi) {
		this.riqi = riqi;
	}
	public String getBuwei() {
		return buwei;
	}
	
	public Date getJgrq() {
		return jgrq;
	}
	public void setJgrq(Date jgrq) {
		this.jgrq = jgrq;
	}
	public void setBuwei(String buwei) {
		this.buwei = buwei;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	

}
