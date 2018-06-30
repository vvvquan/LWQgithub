package com.neuedu.model;

public class Provider {
    private Integer provid;

    private String provname;

    private String address;

    private String phone;

    public Integer getProvid() {
        return provid;
    }

    public void setProvid(Integer provid) {
        this.provid = provid;
    }

    public String getProvname() {
        return provname;
    }

    public void setProvname(String provname) {
        this.provname = provname == null ? null : provname.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
}