package com.ssm.domain;

//购销合同下的货物单
public class ContractProduct {
    private Integer id;
    private Integer contractId;  //购销合同的id号
    private Integer factoryId;  //生产厂家的ID号
    private String factoryName;  //生产厂家的名称
    private String productNo;  //货号
    private String productDesc;  //货物描述
    private Integer cnumber;  //数量
    private String packingUnit;  //包装单位
    private Double price;  //单价
    private Double amount;  //总金额

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductNo() {
        return productNo;
    }

    public void setProductNo(String productNo) {
        this.productNo = productNo;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public Integer getCnumber() {
        return cnumber;
    }

    public void setCnumber(Integer cnumber) {
        this.cnumber = cnumber;
    }

    public String getPackingUnit() {
        return packingUnit;
    }

    public void setPackingUnit(String packingUnit) {
        this.packingUnit = packingUnit;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public void setContractId(Integer contractId) {
        this.contractId = contractId;
    }

    public void setFactoryId(Integer factoryId) {
        this.factoryId = factoryId;
    }

    public void setFactoryName(String factoryName) {
        this.factoryName = factoryName;
    }

    public Integer getContractId() {
        return contractId;
    }

    public Integer getFactoryId() {
        return factoryId;
    }

    public String getFactoryName() {
        return factoryName;
    }
}
