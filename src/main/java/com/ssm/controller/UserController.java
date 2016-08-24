package com.ssm.controller;

import com.ssm.domain.User;
import com.ssm.pagination.Page;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController extends BaseController{
   @Resource
    UserService userService;
    //列表
//    @RequestMapping("/basicinfo/user/List.action")
//    public String list(Model model){
//        List<User> dataList=userService.find(null);
//        model.addAttribute("dataList",dataList);//将数据传到页面
//        return "/basicinfo/user/UserList.jsp";//转向页面
//    }

    //转向添加页面
    @RequestMapping("/basicinfo/user/tocreate.action")
    public String tocreate(){
        return "/basicinfo/user/UserTocreate.jsp";
    }

    //添加页面
    @RequestMapping("/basicinfo/user/insert.action")
    public String insert(User user){
        userService.insert(user);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //转向修改页面
    @RequestMapping("/basicinfo/user/toupdate.action")
    public String toupdate(int id,Model model){
        User obj=userService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/user/UserToupdate.jsp";
    }

    //修改页面
    @RequestMapping("/basicinfo/user/update.action")
    public String update(User user){
        userService.update(user);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //删除一个
    @RequestMapping("/basicinfo/user/deleteById.action")
    public String deleteById(Integer id){
        userService.deleteById(id);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //删除多个
    @RequestMapping("/basicinfo/user/delete.action")
    public String delete(@RequestParam("id")String[] ids){
        userService.deleteById(ids);
        return "redirect:/basicinfo/user/List.action"; //转向列表页面
    }

    //查看
    @RequestMapping("/basicinfo/user/toview.action")
    public String toview(Integer id,Model model){
        User obj=userService.get(id);
        model.addAttribute("obj",obj);
        return "/basicinfo/user/UserToview.jsp";
    }

    //分页查询
    @RequestMapping("/basicinfo/user/List.action")
    public String list(Model model, Page<User> page){

        Map<String, Object> params = new HashMap<String, Object>();

        page.setParams(params);

        List<User> dataList = userService.findPage(page);

        model.addAttribute("dataList", dataList);
        model.addAttribute("pageLinks", page.pageLinks("List.action"));
        return "/basicinfo/user/UserList.jsp";
    }
}
