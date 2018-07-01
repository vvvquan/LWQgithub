package org.model;

import java.io.Serializable;

public class Dlb implements Serializable {
	int id;
	String xh;
	String kl;
	Short role;
	public Dlb(){}
	public Dlb(String xh, String kl, Short role) {
		this.xh = xh;
		this.kl = kl;
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXh() {
		return xh;
	}
	public void setXh(String xh) {
		this.xh = xh;
	}
	public String getKl() {
		return kl;
	}
	public void setKl(String kl) {
		this.kl = kl;
	}
	public Short getRole() {
		return role;
	}
	public void setRole(Short role) {
		this.role = role;
	}
	
}
