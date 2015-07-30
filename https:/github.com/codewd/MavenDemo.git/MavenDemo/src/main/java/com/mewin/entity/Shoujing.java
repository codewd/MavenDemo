package com.mewin.entity;

import java.util.Date;

/**
 * 人工受精
 * @author wangdong
	耳号
	。性别
	发情处理时间
	发情处理药物
	发情日期
	配种时间
	精子来源耳号
	备注
 */
public class Shoujing {
	
	private long id;
	private String erbiao;
	private String fqyw;
	private Date fqsj;
	private Date pzsj;
	private String jzeb;
	private String bz;
	public long getId() {
		return id;
	}
	
	public Date getPzsj() {
		return pzsj;
	}

	public void setPzsj(Date pzsj) {
		this.pzsj = pzsj;
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
	public String getFqyw() {
		return fqyw;
	}
	public void setFqyw(String fqyw) {
		this.fqyw = fqyw;
	}
	public Date getFqsj() {
		return fqsj;
	}
	public void setFqsj(Date fqsj) {
		this.fqsj = fqsj;
	}
	public String getJzeb() {
		return jzeb;
	}
	public void setJzeb(String jzeb) {
		this.jzeb = jzeb;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	
	
}
