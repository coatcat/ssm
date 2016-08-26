package com.ssm.dao.impl;

import com.ssm.dao.ContractProductDao;
import com.ssm.domain.ContractProduct;
import org.springframework.stereotype.Repository;

@Repository
public class ContractProductDaoImpl extends BaseDaoImpl<ContractProduct> implements ContractProductDao{
    public ContractProductDaoImpl(){
        super.setNs("mapper.ContractProductMapper");
    }
}
