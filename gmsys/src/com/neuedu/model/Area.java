package com.neuedu.model;

public class Area {
    private Integer areaid;

    private String areaname;

    private Integer relative;

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname == null ? null : areaname.trim();
    }

    public Integer getRelative() {
        return relative;
    }

    public void setRelative(Integer relative) {
        this.relative = relative;
    }
}