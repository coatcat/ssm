package com.ssm.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TestController {

    @RequestMapping("/basicinfo/test/test.action")
    public String test(@RequestParam("content") String content,Model model){
        System.out.print(content);
        model.addAttribute("content",content);
        return "/basicinfo/test/test.jsp";
    }
}
