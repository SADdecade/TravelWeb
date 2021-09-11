package com.karma.controller;

import com.karma.pojo.Manager;
import com.karma.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/Manager")
public class ManagerController {

    @Autowired
    @Qualifier("ManagerServiceImpl")
    private ManagerService managerService;

    @RequestMapping("/gologin")
    public String gologin(){
        return "ManagerLogin";
    }

    @RequestMapping("/login")
    public String login(Manager manager, HttpSession session){
        if(managerService.login(manager)){
            session.setAttribute("managerLoginInfo",manager.getUsername());
            return "ManagerPage";
        }
        return "redirect:/Manager/gologin";
    }
}
