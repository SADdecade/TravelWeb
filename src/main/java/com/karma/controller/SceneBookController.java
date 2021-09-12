package com.karma.controller;

import com.karma.pojo.SceneBook;
import com.karma.service.SceneBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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
    public String addSceneBook(SceneBook sceneBook, HttpSession session){

        Integer idInfo = (Integer) session.getAttribute("userIdInfo");
        sceneBook.setUserid(idInfo);
        sceneBookService.addSceneBook(sceneBook);
        session.removeAttribute("msg");
        session.setAttribute("msg","预定成功");
        return "redirect:/User/goMain";
    }

    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

}
