package com.ssm.service.impl;

import com.ssm.dao.OutProductDao;
import com.ssm.domain.OutProduct;
import com.ssm.service.OutProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OutProuductServiceImpl implements OutProductService {
    @Resource
    OutProductDao outProductDao;
    public List<OutProduct> find(String inputDate){
        Map paraMap=new HashMap();
        paraMap.put("inputDate",inputDate);

        return outProductDao.find(paraMap);
    }
}
