package com.ssm.service.impl;

import com.ssm.dao.FactoryDao;
import com.ssm.domain.Factory;
import com.ssm.pagination.Page;
import com.ssm.service.FactoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Service
public class FactoryServiceImpl implements FactoryService {
    @Resource
    FactoryDao factoryDao;
    public List<Factory> findPage(Page page) {
        return null;
    }

    public List<Factory> find(Map map) {
        return factoryDao.find(map);
    }

    public Factory get(Serializable id) {
        return factoryDao.get(id);
    }

    public void insert(Factory factory) {
        factoryDao.insert(factory);
    }

    public void update(Factory factory) {
        factoryDao.update(factory);
    }

    public void deleteById(Serializable id) {
        factoryDao.deleteById(id);
    }

    public void delete(Serializable[] ids) {
        factoryDao.delete(ids);
    }
}
