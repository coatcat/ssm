package com.ssm.controller;

import com.ssm.domain.ContractProduct;
import com.ssm.domain.Factory;
import com.ssm.service.ContractProductService;
import com.ssm.service.FactoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ContractProductController extends BaseController{
   @Resource
   ContractProductService contractProductService;
   @Resource
   FactoryService factoryService;
    //转向添加页面
    @RequestMapping("/cargo/contractproduct/tocreate.action")
    public String tocreate(int contractId,Model model){
        //传递主表的ID，同时作为查询条件
        model.addAttribute("contractId",contractId);

        //准备厂家下拉框
        model.addAttribute("factoryList", factoryService.find(null));

        //准备列表数据，某个合同下的货物
        Map paraMap=new HashMap();
        paraMap.put("contractId",contractId);
        List<ContractProduct> dataList = contractProductService.find(paraMap);
        model.addAttribute("dataList", dataList);
        return "/cargo/contractproduct/jContractProductCreate.jsp";
    }

    //添加页面
    @RequestMapping("/cargo/contractproduct/insert.action")
    public String insert(ContractProduct contractProduct,Model model){

        contractProductService.insert(contractProduct);
        model.addAttribute("contractId",contractProduct.getContractId());
        return "redirect:/cargo/contractproduct/tocreate.action"; //转向新增页面
    }

    //转向修改页面
    @RequestMapping("/cargo/contractproduct/toupdate.action")
    public String toupdate(int id,Model model){

        ContractProduct obj = contractProductService.get(id);
        model.addAttribute("obj", obj);

        //准备厂家下拉框
        List<Factory> factoryList=factoryService.find(null);
        model.addAttribute("factoryList",factoryList);

        return "cargo/contractproduct/jContractProductUpdate.jsp";
    }
    //修改
    @RequestMapping("/cargo/contractproduct/update.action")
    public String update(ContractProduct contractProduct){

        contractProductService.update(contractProduct);
        return "redirect:/cargo/contractproduct/tocreate.action?contractId="+contractProduct.getContractId();
    }

    //删除
    @RequestMapping("/cargo/contractproduct/delete.action")
    public String delete(int id, int contractId){
        contractProductService.deleteById(id);
        return "redirect:/cargo/contractproduct/tocreate.action?contractId="+contractId;
    }
}
