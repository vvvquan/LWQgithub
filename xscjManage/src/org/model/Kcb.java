package org.model;

import java.io.Serializable;

public class Kcb implements Serializable {
	String kch;
	String kcm;
	String kxxq;
	String xs;
	int xf;
	public Kcb(){}
	public Kcb(String kch, String kcm, String kxxq, String xs, int xf) {
		this.kch = kch;
		this.kcm = kcm;
		this.kxxq = kxxq;
		this.xs = xs;
		this.xf = xf;
	}
	public String getKch() {
		return kch;
	}
	public void setKch(String kch) {
		this.kch = kch;
	}
	public String getKcm() {
		return kcm;
	}
	public void setKcm(String kcm) {
		this.kcm = kcm;
	}
	public String getKxxq() {
		return kxxq;
	}
	public void setKxxq(String kxxq) {
		this.kxxq = kxxq;
	}
	public String getXs() {
		return xs;
	}
	public void setXs(String xs) {
		this.xs = xs;
	}
	public int getXf() {
		return xf;
	}
	public void setXf(int xf) {
		this.xf = xf;
	}
	
}
