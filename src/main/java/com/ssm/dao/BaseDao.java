package com.ssm.dao;

import com.ssm.pagination.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface BaseDao<T> {
    //分页查询
    public List<T> findPage(Page page);
    //带条件查询
    public List<T> find(Map map);
    //只查询一个ID
    public T get(Serializable id);
    //插入
    public void insert(T entity);
    //修改
    public void update(T entity);
    //删除ID
    public void deleteById(Serializable id);
    //批量删除
    public void delete(Serializable[] ids);

}
