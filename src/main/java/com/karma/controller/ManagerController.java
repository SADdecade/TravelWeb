package com.karma.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.karma.pojo.Manager;
import com.karma.pojo.Scene;
import com.karma.pojo.TravelNote;
import com.karma.service.ManagerService;
import com.karma.service.SceneService;
import com.karma.service.TravelNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/Manager")
public class ManagerController {

    @Autowired
    @Qualifier("ManagerServiceImpl")
    private ManagerService managerService;

    @Autowired
    @Qualifier("SceneServiceImpl")
    private SceneService sceneService;

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
        session.removeAttribute("msg");
        session.setAttribute("msg","用户或密码错误!");
        return "redirect:/Manager/gologin";
    }

    @RequestMapping("/scene")
    public String scene(@RequestParam(value = "scenename",defaultValue = "") String scenename, @RequestParam(value = "cityid",defaultValue = "0") int cityid, @RequestParam(value = "pn",defaultValue = "1") int pn, Model model){
        PageHelper.startPage(pn,5);
        HashMap map = new HashMap();
        map.put("scenename",scenename);
        if(cityid>0){
            map.put("cityid",cityid);
        }
        List<Scene> scenes = sceneService.querySceneByMap(map);
        PageInfo page = new PageInfo(scenes,5);

        model.addAttribute("pageInfo",page);


        return "Manager/SceneManage";
    }
    @RequestMapping("/remove")
    public String remove(HttpSession session){
        session.removeAttribute("managerLoginInfo");
        return "redirect:/User/goMain";
    }

    @Autowired
    @Qualifier("TravelNoteServiceImpl")
    private TravelNoteService travelNoteService;

    @RequestMapping("/travelnote")
    public String queryAll(@RequestParam(value = "pn",defaultValue = "1") int pn, Model model){


        PageHelper.startPage(pn,3);
        List<TravelNote> travelNotes = travelNoteService.queryAll();

        PageInfo page = new PageInfo(travelNotes,5);
        model.addAttribute("pageInfo",page);

        return "Manager/TravelnoteManage";
    }

}
