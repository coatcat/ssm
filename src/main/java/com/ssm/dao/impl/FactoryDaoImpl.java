package com.ssm.dao.impl;

import com.ssm.dao.FactoryDao;
import com.ssm.domain.Factory;
import org.springframework.stereotype.Repository;

@Repository
public class FactoryDaoImpl extends BaseDaoImpl<Factory> implements FactoryDao{
    public FactoryDaoImpl(){
        super.setNs("mapper.FactoryMapper");
    }
}
