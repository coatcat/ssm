package com.ssm.service.impl;

import com.ssm.dao.ContractDao;
import com.ssm.domain.Contract;
import com.ssm.pagination.Page;
import com.ssm.service.ContractService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Service
public class ContractServiceImpl implements ContractService {
    @Resource
    ContractDao contractDao;
    public List<Contract> findPage(Page page) {
        return contractDao.findPage(page);
    }

    public List<Contract> find(Map map) {
        return contractDao.find(map);
    }

    public Contract get(Serializable id) {
        return contractDao.get(id);
    }

    public void insert(Contract contract) {
        contractDao.insert(contract);
    }

    public void update(Contract contract) {
        contractDao.update(contract);
    }

    public void deleteById(Serializable id) {
        contractDao.deleteById(id);
    }

    public void delete(Serializable[] ids) {
        contractDao.delete(ids);
    }
}
