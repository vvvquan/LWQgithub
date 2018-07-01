package org.model;

import java.io.Serializable;

public class Xsb implements Serializable {
	private String xh;
	private String xm;
	private Short xb;
	private String cssj;
	private String zym;
	//private Integer zyId;
	private Integer zxf;
	private  String bz;
	private byte[] zp;
	private Zyb zyb;
	public Xsb(){}
	public Xsb(String xh, String xm, Short xb) {
		this.xh = xh;
		this.xm = xm;
		this.xb = xb;
	}
	public Xsb(String xh, String xm, Short xb, String cssj, Integer zxf, String bz, byte[] zp, Zyb zyb) {
		this.xh = xh;
		this.xm = xm;
		this.xb = xb;
		this.cssj = cssj;
		this.zxf = zxf;
		this.bz = bz;
		this.zp = zp;
		this.zyb = zyb;
	}
	public String getXh() {
		return xh;
	}
	public void setXh(String xh) {
		this.xh = xh;
	}
	public String getXm() {
		return xm;
	}
	public void setXm(String xm) {
		this.xm = xm;
	}
	public Short getXb() {
		return xb;
	}
	public void setXb(Short xb) {
		this.xb = xb;
	}
	public String getCssj() {
		return cssj;
	}
	public void setCssj(String cssj) {
		this.cssj = cssj;
	}
	/*
	public Integer getZyId() {
		return zyId;
	}
	public void setZyId(Integer zyId) {
		this.zyId = zyId;
	}
	*/
	public Integer getZxf() {
		return zxf;
	}
	public void setZxf(Integer zxf) {
		this.zxf = zxf;
	}
	public String getBz() {
		return bz;
	}
	public void setBz(String bz) {
		this.bz = bz;
	}
	public byte[] getZp() {
		return zp;
	}
	public void setZp(byte[] zp) {
		this.zp = zp;
	}
	public Zyb getZyb() {
		return zyb;
	}
	public void setZyb(Zyb zyb) {
		this.zyb = zyb;
	}
	public String getZym() {
		return zym;
	}
	public void setZym(String zym) {
		this.zym = zym;
	}
}
