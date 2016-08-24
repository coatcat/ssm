package com.ssm.controller;


import com.ssm.domain.User;
import com.ssm.pagination.Page;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {
    //系统首页模块
    @Resource
    UserService userService;
    @RequestMapping(value={"/home.action"})
    public String login(){
        return "/index.jsp";
    }

    @RequestMapping(value={"/fmain.action"})
    public String fmain(){
        return "/home/fmain.jsp";
    }

    @RequestMapping(value={"/left.action"})
    public String left(){
        return "/home/left.jsp";
    }

    @RequestMapping(value={"/title.action"})
    public String title(){
        return "/home/title.jsp";
    }

    @RequestMapping(value={"/cargoLeft.action"})
    public String cargoLeft(){
        return "/cargo/left.jsp";
    }

    @RequestMapping(value={"/cargoMain.action"})
    public String cargoMain(){
        return "/cargo/main.jsp";
    }

//    @RequestMapping(value={"/UserList.action"})
//    public String UserList(Model model){
//        List<User> dataList=userService.find(null);
//        model.addAttribute("dataList",dataList);//将数据传到页面
//        return "/basicinfo/user/UserList.jsp";//转向页面
//    }

    @RequestMapping(value={"/tocreate.action"})
    public String tocreate(){
        return "/basicinfo/user/UserTocreate.jsp";
    }

    @RequestMapping(value={"/insert.action"})
    public String insert(User user){
        userService.insert(user);
        return "redirect:/UserList.action"; //转向列表页面
    }

    @RequestMapping(value={"toupdate.action"})
    public String toupdate(int id,Model model){
        User obj=userService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/user/UserToupdate.jsp";
    }

    @RequestMapping(value={"/update.action"})
    public String update(User user){
        userService.update(user);
        return "redirect:/UserList.action"; //转向列表页面
    }

    //删除一个
    @RequestMapping(value={"/deleteById.action"})
    public String deleteById(Integer id){
        userService.deleteById(id);
        return "redirect:/UserList.action"; //转向列表页面
    }

    //查看
    @RequestMapping(value={"toview.action"})
    public String toview(Integer id,Model model){
        User obj=userService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/user/UserToview.jsp";
    }

    @RequestMapping(value={"/UserList.action"})
    public String UserList(Model model,Page<User> page){
        Map<String, Object> params = new HashMap<String, Object>();

        page.setParams(params);
        List<User> dataList = userService.findPage(page);

        model.addAttribute("dataList", dataList);
        model.addAttribute("pageLinks", page.pageLinks("UserList.action"));
        return "/basicinfo/user/UserList.jsp";//转向页面
    }
}
