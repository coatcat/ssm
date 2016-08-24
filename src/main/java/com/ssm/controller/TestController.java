package com.ssm.controller;


import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class TestController {

    @Resource
    UserService userService;

    @RequestMapping("/basicinfo/test/test.action")
    public String test(User user){
        userService.insert(user);
        return "redirect:/index.jsp";
    }
}
