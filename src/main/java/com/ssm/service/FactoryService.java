package com.ssm.service;


import com.ssm.domain.Factory;
import com.ssm.pagination.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface FactoryService {
    //分页查询
    public List<Factory> findPage(Page page);
    //带条件查询
    public List<Factory> find(Map map);
    //只查询一个ID
    public Factory get(Serializable id);
    //插入
    public void insert(Factory factory);
    //修改
    public void update(Factory factory);
    //删除ID
    public void deleteById(Serializable id);
    //批量删除
    public void delete(Serializable[] ids);
}
