package com.ssm.service.impl;

import com.ssm.dao.ContractProductDao;
import com.ssm.domain.ContractProduct;
import com.ssm.pagination.Page;
import com.ssm.service.ContractProductService;
import com.ssm.util.UtilFuns;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

@Service
public class ContractProductServiceImpl implements ContractProductService {
    @Resource
    ContractProductDao contractProductDao;
    public List<ContractProduct> findPage(Page page) {
        return contractProductDao.findPage(page);
    }

    public List<ContractProduct> find(Map map) {
        return contractProductDao.find(map);
    }

    public ContractProduct get(Serializable id) {
        return contractProductDao.get(id);
    }

    public void insert(ContractProduct contractProduct) {
        //自动计算合同的总金额
        if(UtilFuns.isNotEmpty(contractProduct.getCnumber())&&UtilFuns.isNotEmpty(contractProduct.getPrice())){
            contractProduct.setAmount(contractProduct.getCnumber() * contractProduct.getPrice());
        }
        contractProductDao.insert(contractProduct);
    }

    public void update(ContractProduct contractProduct) {
        contractProductDao.update(contractProduct);
    }

    public void deleteById(Serializable id) {
        contractProductDao.deleteById(id);
    }

    public void delete(Serializable[] ids) {
        contractProductDao.delete(ids);
    }
}
