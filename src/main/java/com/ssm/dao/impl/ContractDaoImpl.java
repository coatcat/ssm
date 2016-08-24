package com.ssm.dao.impl;

import com.ssm.dao.ContractDao;
import com.ssm.domain.Contract;
import org.springframework.stereotype.Repository;

@Repository
public class ContractDaoImpl extends BaseDaoImpl<Contract> implements ContractDao{
    public ContractDaoImpl(){
        super.setNs("mapper.ContractMapper");
    }
}
