package com.neuedu.model;

import java.util.Date;

public class Buy {
    private Integer buyid;

    private Double buycount;

    private Date buytime;

    private Integer provid;
    
    private Integer prodid;

    private Integer departid;

    public Buy(){}
    
    public Buy(Integer buyid, Double buycount, Date buytime, Integer provid, Integer prodid, Integer departid) {
		this.buyid = buyid;
    	this.buycount = buycount;
    	this.buytime = buytime;
    	this.provid = provid;
    	this.prodid = prodid;
    	this.departid = departid;
	}

	public Integer getBuyid() {
        return buyid;
    }

    public void setBuyid(Integer buyid) {
        this.buyid = buyid;
    }

    public Double getBuycount() {
        return buycount;
    }

    public void setBuycount(Double buycount) {
        this.buycount = buycount;
    }

    public Date getBuytime() {
        return buytime;
    }

    public void setBuytime(Date buytime) {
        this.buytime = buytime;
    }

    public Integer getProvid() {
        return provid;
    }

    public void setProvid(Integer provid) {
        this.provid = provid;
    }
    
    public Integer getProdid() {
        return prodid;
    }

    public void setProdid(Integer prodid) {
        this.prodid = prodid;
    }

    public Integer getDepartid() {
        return departid;
    }

    public void setDepartid(Integer departid) {
        this.departid = departid;
    }
}