package com.ssm.controller;

import com.ssm.domain.Contract;
import com.ssm.service.ContractService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class ContractController extends BaseController{
   @Resource
   ContractService contractService;
    //列表
    @RequestMapping("/cargo/contract/List.action")
    public String list(Model model){
        List<Contract> dataList=contractService.find(null);
        model.addAttribute("dataList",dataList);//将数据传到页面
        return "/cargo/contract/jContractList.jsp";//转向页面
    }

    //转向添加页面
    @RequestMapping("/cargo/contract/tocreate.action")
    public String tocreate(){
        return "/cargo/contract/jContractCreate.jsp";
    }

    //添加页面
    @RequestMapping("/cargo/contract/insert.action")
    public String insert(Contract contract){
        contractService.insert(contract);
        return "redirect:/cargo/contract/List.action"; //转向列表页面
    }

    //转向修改页面
    @RequestMapping("/cargo/contract/toupdate.action")
    public String toupdate(int id,Model model){
        Contract obj=contractService.get(id);
        model.addAttribute("obj",obj);
        return "/cargo/contract/jContractUpdate.jsp";
    }

    //修改页面
    @RequestMapping("/cargo/contract/update.action")
    public String update(Contract contract){
        contractService.update(contract);
        return "redirect:/cargo/contract/List.action"; //转向列表页面
    }

    //删除一个
    @RequestMapping("/cargo/contract/deleteById.action")
    public String deleteById(Integer id){
        contractService.deleteById(id);
        return "redirect:/cargo/contract/List.action"; //转向列表页面
    }

    //删除多个
    @RequestMapping("/cargo/contract/delete.action")
    public String delete(@RequestParam("id")String[] ids){
        contractService.deleteById(ids);
        return "redirect:/cargo/contract/List.action"; //转向列表页面
    }

    //查看
    @RequestMapping("/cargo/contract/toview.action")
    public String toview(Integer id,Model model){
        Contract obj=contractService.get(id);
        model.addAttribute("obj",obj);
        return "/cargo/contract/jContractView.jsp";
    }
}
