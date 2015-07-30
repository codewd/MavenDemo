package com.mewin.entity;

import java.util.Date;

/**
 * 运输信息
 * @author wangdong
	调动日期
	负责人
	电话
	运输单号
	司机姓名
	司机电话
	车号
	调动清单
	收货日期
	调动目的地
 */
public class Yunshu {
	private long id;
	private Date ddrq;
	private String fuzeren;
	private String dianhua;
	private String ysdh;
	private String sjxm;
	private String sjdh;
	private String chehao;
	private String ddqd;
	private Date shrq;
	private String ddmdd;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getDdrq() {
		return ddrq;
	}
	public void setDdrq(Date ddrq) {
		this.ddrq = ddrq;
	}
	public String getFuzeren() {
		return fuzeren;
	}
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public String getYsdh() {
		return ysdh;
	}
	public void setYsdh(String ysdh) {
		this.ysdh = ysdh;
	}
	public String getSjxm() {
		return sjxm;
	}
	public void setSjxm(String sjxm) {
		this.sjxm = sjxm;
	}
	public String getSjdh() {
		return sjdh;
	}
	public void setSjdh(String sjdh) {
		this.sjdh = sjdh;
	}
	public String getChehao() {
		return chehao;
	}
	public void setChehao(String chehao) {
		this.chehao = chehao;
	}
	public String getDdqd() {
		return ddqd;
	}
	public void setDdqd(String ddqd) {
		this.ddqd = ddqd;
	}
	public Date getShrq() {
		return shrq;
	}
	public void setShrq(Date shrq) {
		this.shrq = shrq;
	}
	public String getDdmdd() {
		return ddmdd;
	}
	public void setDdmdd(String ddmdd) {
		this.ddmdd = ddmdd;
	}
	
	
	
}
