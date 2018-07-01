package org.model;

import java.io.Serializable;

public class CjbId implements Serializable{
	private String xh;
	private String kch;
	public String getXh() {
		return xh;
	}
	public void setXh(String xh) {
		this.xh = xh;
	}
	public String getKch() {
		return kch;
	}
	public void setKch(String kch) {
		this.kch = kch;
	}
	public boolean equals(Object other){
		if(this==other) return true;
		if(other==null) return false;
		if(!(other instanceof CjbId)) return false;
		CjbId castOther = (CjbId)other;
		return ((this.getXh()==castOther.getKch())||(this.getXh()!=null &&
				castOther.getKch()!=null && this.getXh().equals(castOther.getXh()))) &&
				((this.getKch()==castOther.getKch()||(this.getKch()!=null && 
				castOther.getKch()!=null && this.getKch().equals(castOther.getKch()))));
	}
	public int hashCode(){
		int result = 0;
		result = 37*result + (getXh()==null?0:this.getXh().hashCode());
		result = 37*result + (getKch()==null?0:this.getKch().hashCode());
		return result;
	}
}
