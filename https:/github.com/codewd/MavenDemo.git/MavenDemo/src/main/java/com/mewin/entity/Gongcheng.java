package com.mewin.entity;

/**
 * 工程部门信息
 * @author wangdong
	项目规划
	预算资金
	负责人
	工期
	项目进展
 */
public class Gongcheng {
	private long id;
	private String xmgh;
	private double yszj;
	private String fuzeren;
	private String gongqi;
	private String xmjz;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getXmgh() {
		return xmgh;
	}
	public void setXmgh(String xmgh) {
		this.xmgh = xmgh;
	}
	public double getYszj() {
		return yszj;
	}
	public void setYszj(double yszj) {
		this.yszj = yszj;
	}
	public String getFuzeren() {
		return fuzeren;
	}
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	public String getGongqi() {
		return gongqi;
	}
	public void setGongqi(String gongqi) {
		this.gongqi = gongqi;
	}
	public String getXmjz() {
		return xmjz;
	}
	public void setXmjz(String xmjz) {
		this.xmjz = xmjz;
	}
	
	
	
}
