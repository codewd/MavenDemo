package com.mewin.entity;

/**
 * 项目信息
 * @author wangdong
	项目名
	负责单位
	负责人
	项目状态
 */
public class Xiangmu {
	private long id;
	private String xmm;
	private String fzdw;
	private String fzr;
	private String xmzt;
	
	private String userId;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getXmm() {
		return xmm;
	}

	public void setXmm(String xmm) {
		this.xmm = xmm;
	}

	public String getFzdw() {
		return fzdw;
	}

	public void setFzdw(String fzdw) {
		this.fzdw = fzdw;
	}

	public String getFzr() {
		return fzr;
	}

	public void setFzr(String fzr) {
		this.fzr = fzr;
	}

	public String getXmzt() {
		return xmzt;
	}

	public void setXmzt(String xmzt) {
		this.xmzt = xmzt;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
