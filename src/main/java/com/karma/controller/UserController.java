package com.karma.controller;


import com.karma.pojo.User;
import com.karma.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;

/**
 * controller
 */
@Controller
@RequestMapping("/User")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @RequestMapping("/addUser")
    public String addUser(User user){
        //检测用户名是否被使用
        if(userService.registerCheck(user.getUsername())) {
            //检测是否插入表成功
            if(userService.addUser(user)==1) {
                return "success";
            }else{
                return "login";
            }
        }else{
            //用户名被使用过，返回主页
            return "login";
        }
    }

    @RequestMapping("/login")
    public String login(User user){
        if(userService.login(user)){
            return "login";
        }else{
            return "login";
        }
    }

    @ResponseBody
    @RequestMapping("/test")
    public String test(String name,String pwd) {
        String msg="";
        if(name!=null){
            if(name.equals("admin")){
                return "OK";
            }else{
                return "用户名有误";
            }
        }
        if(pwd!=null){
            if(pwd.equals("123456")){
                return "OK";
            }else{
                return "密码有误";
            }
        }
        return msg;
    }
}
