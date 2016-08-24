package com.ssm.service;

import com.ssm.domain.User;
import com.ssm.pagination.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface UserService {
    //分页查询
    public List<User> findPage(Page page);
    //带条件查询
    public List<User> find(Map map);
    //只查询一个ID
    public User get(Serializable id);
    //插入
    public void insert(User user);
    //修改
    public void update(User user);
    //删除ID
    public void deleteById(Serializable id);
    //批量删除
    public void delete(Serializable[] ids);
}
