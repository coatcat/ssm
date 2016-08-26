package com.ssm.service;

import com.ssm.domain.OutProduct;

import java.util.List;

public interface OutProductService {
    //查询日期
    public List<OutProduct> find(String inputDate);

}
