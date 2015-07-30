package com.mewin.entity;

import java.util.Date;

/**
 * 胚胎移植
 * @author wangdong
	耳号
	移植时间
	发情状况
	排卵情况
	细胞类型
	细胞移植数量
	备注信息
 */
public class Peitai {
	
	private long id;
	private String erbiao;
	private Date yzsj;
	private String fqqk;
	private String plqk;
	private String xblx;
	private String yzsl;
	private String bz;
	
	
	public String getErbiao() {
		return erbiao;
	}
	public void setErbiao(String erbiao) {
		this.erbiao = erbiao;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Date getYzsj() {
		return yzsj;
	}
	public void setYzsj(Date yzsj) {
		this.yzsj = yzsj;
	}
	public String getFqqk() {
		return fqqk;
	}
	public void setFqqk(String fqqk) {
		this.fqqk = fqqk;
	}
	public String getPlqk() {
		return plqk;
	}
	public void setPlqk(String plqk) {
		this.plqk = plqk;
	}
	public String getXblx() {
		return xblx;
	}
	public void setXblx(String xblx) {
		this.xblx = xblx;
	}
	public String getYzsl() {
		return yzsl;
	}
	public void setYzsl(String yzsl) {
		this.yzsl = yzsl;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	
	

}
