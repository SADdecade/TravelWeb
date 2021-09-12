package com.karma.controller;

import com.karma.pojo.SceneBook;
import com.karma.service.SceneBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scenebook")
public class SceneBookController {

    @Autowired
    @Qualifier("SceneBookServiceImpl")
    private SceneBookService sceneBookService;

    //增加一条预定
    @RequestMapping("/toaddscenebook")
    public String toaddSceneBook(int sceneid, Model model){
        model.addAttribute("sceneid",sceneid);
        return "addscenebook";
    }

    @RequestMapping("/addscenebook")
    public String addSceneBook(SceneBook sceneBook){
        System.out.println(sceneBook);
        sceneBookService.addSceneBook(sceneBook);
        return "addsceneSucess";
    }

    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

}
