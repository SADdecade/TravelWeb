package com.karma.controller;


import com.karma.pojo.User;
import com.karma.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
        System.out.println(user);
        if(userService.registerCheck(user.getUsername())) {
            //检测是否插入表成功
            System.out.println(user);
            userService.addUser(user);
            return "success";
        }else{
            //用户名被使用过，返回注册
            return "login";
        }
    }

}
