package com.mewin.entity;

import java.util.Date;

/**
 * 种羊防疫信息
 * @author wangdong
 *
 	耳标
	防疫日期
	病害名
	疫苗编号
	疫病日期
	治疗方式
	用药剂量
	用药品种
	兽医
 */
public class Fangyi {
	private long id;
	private String erbiao;
	private Date fyrq;
	private String bhm;
	private String ymbh;
	private Date ybrq;
	private String zlfs;
	private String yyjl;
	private String yypz;
	private String shouyi;
	
	private long userId;

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

	public Date getFyrq() {
		return fyrq;
	}

	public void setFyrq(Date fyrq) {
		this.fyrq = fyrq;
	}

	public String getBhm() {
		return bhm;
	}

	public void setBhm(String bhm) {
		this.bhm = bhm;
	}

	

	public Date getYbrq() {
		return ybrq;
	}

	public void setYbrq(Date ybrq) {
		this.ybrq = ybrq;
	}

	public String getZlfs() {
		return zlfs;
	}

	public void setZlfs(String zlfs) {
		this.zlfs = zlfs;
	}

	public String getYmbh() {
		return ymbh;
	}

	public void setYmbh(String ymbh) {
		this.ymbh = ymbh;
	}

	public String getYyjl() {
		return yyjl;
	}

	public void setYyjl(String yyjl) {
		this.yyjl = yyjl;
	}

	public String getYypz() {
		return yypz;
	}

	public void setYypz(String yypz) {
		this.yypz = yypz;
	}

	public String getShouyi() {
		return shouyi;
	}

	public void setShouyi(String shouyi) {
		this.shouyi = shouyi;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}
	
	
}
