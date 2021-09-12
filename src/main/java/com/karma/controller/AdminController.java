package com.karma.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.karma.pojo.Manager;
import com.karma.pojo.Scene;
import com.karma.pojo.SceneComment;
import com.karma.pojo.TravelNote;
import com.karma.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/Admin")
public class AdminController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserServiceImpl userService;

    @Autowired
    @Qualifier("SceneServiceImpl")
    private SceneService sceneService;

    @Autowired
    @Qualifier("TravelNoteServiceImpl")
    private TravelNoteService travelNoteService;

    @Autowired
    @Qualifier("SceneCommentServiceImpl")
    private SceneCommentService sceneCommentService;

    @RequestMapping("/onestrip")
    public String scene(@RequestParam(value = "pn",defaultValue = "1") int pn, Model model,HttpSession session){
        PageHelper.startPage(pn,5);

        Integer userIdInfo = (Integer)session.getAttribute("userIdInfo");

        System.out.println(userIdInfo);

        List<TravelNote> notes = travelNoteService.queryByUserId(userIdInfo);

        for (TravelNote note : notes) {
            System.out.println(note);
        }

        PageInfo page = new PageInfo(notes,5);

        model.addAttribute("pageInfo",page);

        return "admin/TripNoteAdmin";
    }
    @RequestMapping("/remove")
    public String remove(HttpSession session){
        session.removeAttribute("userLoginInfo");
        return "redirect:/User/goMain";
    }

    @RequestMapping("/scenecommend")
    public String scenecommend(SceneComment comment,HttpSession session){
        comment.setUserid((Integer) session.getAttribute("userIdInfo"));
        sceneCommentService.addSceneComment(comment);
        int sceneid = comment.getSceneid();
        return "redirect:/scene/sceneById?id="+sceneid;
    }

}