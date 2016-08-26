package com.ssm.service;

import com.ssm.domain.ContractProduct;
import com.ssm.pagination.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface ContractProductService {
    //分页查询
    public List<ContractProduct> findPage(Page page);
    //带条件查询
    public List<ContractProduct> find(Map map);
    //只查询一个ID
    public ContractProduct get(Serializable id);
    //插入
    public void insert(ContractProduct contractProduct);
    //修改
    public void update(ContractProduct contractProduct);
    //删除ID
    public void deleteById(Serializable id);
    //批量删除
    public void delete(Serializable[] ids);
}
