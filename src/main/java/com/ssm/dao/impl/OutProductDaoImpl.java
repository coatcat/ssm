package com.ssm.dao.impl;

import com.ssm.dao.OutProductDao;
import com.ssm.domain.OutProduct;
import org.springframework.stereotype.Repository;

@Repository
public class OutProductDaoImpl extends BaseDaoImpl<OutProduct> implements OutProductDao{
    public OutProductDaoImpl(){
        super.setNs("mapper.OutProductMapper");
    }
}
