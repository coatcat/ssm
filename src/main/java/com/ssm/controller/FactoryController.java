package com.ssm.controller;

import com.ssm.domain.Factory;
import com.ssm.service.FactoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class FactoryController extends BaseController{
   @Resource
    FactoryService factoryService;
    //列表
    @RequestMapping("/basicinfo/factory/List.action")
    public String list(Model model){
        List<Factory> dataList=factoryService.find(null);
        model.addAttribute("dataList",dataList);//将数据传到页面
        return "/basicinfo/factory/FactoryList.jsp";//转向页面
    }

    //转向添加页面
    @RequestMapping("/basicinfo/factory/tocreate.action")
    public String tocreate(){
        return "/basicinfo/factory/FactoryTocreate.jsp";
    }

    //添加页面
    @RequestMapping("/basicinfo/factory/insert.action")
    public String insert(Factory factory){
        factoryService.insert(factory);
        return "redirect:/basicinfo/factory/List.action"; //转向列表页面
    }

    //转向修改页面
    @RequestMapping("/basicinfo/factory/toupdate.action")
    public String toupdate(int id,Model model){
        Factory obj=factoryService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/factory/FactoryToupdate.jsp";
    }

    //修改页面
    @RequestMapping("/basicinfo/factory/update.action")
    public String update(Factory factory){
        factoryService.update(factory);
        return "redirect:/basicinfo/factory/List.action"; //转向列表页面
    }

    //删除一个
    @RequestMapping("/basicinfo/factory/deleteById.action")
    public String deleteById(Integer id){
        factoryService.deleteById(id);
        return "redirect:/basicinfo/factory/List.action"; //转向列表页面
    }

    //删除多个
    @RequestMapping("/basicinfo/factory/delete.action")
    public String delete(@RequestParam("id")String[] ids){
        factoryService.deleteById(ids);
        return "redirect:/basicinfo/factory/List.action"; //转向列表页面
    }

    //查看
    @RequestMapping("/basicinfo/factory/toview.action")
    public String toview(Integer id,Model model){
        Factory obj=factoryService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/factory/FactoryToview.jsp";
    }
}
