package com.karma.controller;


import com.karma.pojo.User;
import com.karma.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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
    public String addUser(User user, HttpSession session){
        //检测用户名是否被使用
        if(userService.registerCheck(user.getUsername())) {
            //检测是否插入表成功
            if(userService.addUser(user)==1) {
                session.setAttribute("userLoginInfo",user.getUsername());
            }else{
            }
        }else{
            //用户名被使用过，返回主页
        }
        return "main";
    }

    @RequestMapping("/login")
    public String login(User user,HttpSession session){
        System.out.println(user);
        if(userService.login(user)){
            session.setAttribute("userLoginInfo",user.getUsername());
        }
        return "main";
    }


    @ResponseBody
    @RequestMapping("/test")
    public String test(String name) {
        String msg="";
        if(name!=null){
            if(userService.registerCheck(name)){
                msg="该用户名可用";
            }else{
                msg="该用户名已被使用";
            }
        }
        return msg;
    }

    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
}
