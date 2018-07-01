package org.model;

import java.io.Serializable;

public class Cjb implements Serializable {
	private CjbId id;
	int cj;
	int xf;
	public Cjb(){}
	public CjbId getId() {
		return id;
	}
	public void setId(CjbId id) {
		this.id = id;
	}
	public int getCj() {
		return cj;
	}
	public void setCj(int cj) {
		this.cj = cj;
	}
	public int getXf() {
		return xf;
	}
	public void setXf(int xf) {
		this.xf = xf;
	}
}
