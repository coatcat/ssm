package com.ssm.domain;

public class Factory {
    private Integer id;
    private String factoryName;
    private String f_contacts;
    private String f_phone;
    private String f_username;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFactoryName() {
        return factoryName;
    }

    public void setFactoryName(String factoryName) {
        this.factoryName = factoryName;
    }

    public String getF_contacts() {
        return f_contacts;
    }

    public void setF_contacts(String f_contacts) {
        this.f_contacts = f_contacts;
    }

    public String getF_phone() {
        return f_phone;
    }

    public void setF_phone(String f_phone) {
        this.f_phone = f_phone;
    }

    public String getF_username() {
        return f_username;
    }

    public void setF_username(String f_username) {
        this.f_username = f_username;
    }
}
