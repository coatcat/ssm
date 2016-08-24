package com.ssm.service;

import com.ssm.domain.Contract;
import com.ssm.pagination.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface ContractService {
    //分页查询
    public List<Contract> findPage(Page page);
    //带条件查询
    public List<Contract> find(Map map);
    //只查询一个ID
    public Contract get(Serializable id);
    //插入
    public void insert(Contract contract);
    //修改
    public void update(Contract contract);
    //删除ID
    public void deleteById(Serializable id);
    //批量删除
    public void delete(Serializable[] ids);
}
