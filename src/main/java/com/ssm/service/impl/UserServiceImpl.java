package com.ssm.service.impl;

import com.ssm.dao.UserDao;
import com.ssm.domain.User;
import com.ssm.pagination.Page;
import com.ssm.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserDao userDao;
    public List<User> findPage(Page page) {
        return userDao.findPage(page);
    }

    public List<User> find(Map map) {
        return userDao.find(map);
    }

    public User get(Serializable id) {
        return userDao.get(id);
    }

    public void insert(User user) {
        userDao.insert(user);
    }

    public void update(User user) {
        userDao.update(user);
    }

    public void deleteById(Serializable id) {
        userDao.deleteById(id);
    }

    public void delete(Serializable[] ids) {
        userDao.delete(ids);
    }
}
