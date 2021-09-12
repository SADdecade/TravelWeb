package com.karma.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.karma.pojo.Scene;
import com.karma.pojo.SceneComment;
import com.karma.pojo.SceneQuest;
import com.karma.service.SceneCommentService;
import com.karma.service.SceneQuestService;
import com.karma.service.SceneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/scene")
public class SceneController {

    @Autowired
    @Qualifier("SceneServiceImpl")
    private SceneService sceneService;

    @RequestMapping("/queryall")
    public String queryall(@RequestParam(value = "scenename",defaultValue = "") String scenename,@RequestParam(value = "cityid",defaultValue = "0") int cityid,@RequestParam(value = "pn",defaultValue = "1") int pn, Model model){
        PageHelper.startPage(pn,3);
        HashMap map = new HashMap();
        map.put("scenename",scenename);
        if(cityid>0){
            map.put("cityid",cityid);
        }
        List<Scene> scenes = sceneService.querySceneByMap(map);
        PageInfo page = new PageInfo(scenes,5);

        model.addAttribute("pageInfo",page);

        return "SceneAll";
    }

    @Autowired
    @Qualifier("SceneQuestServiceImpl")
    private SceneQuestService sceneQuestService;

    @Autowired
    @Qualifier("SceneCommentServiceImpl")
    private SceneCommentService sceneCommentService;

    //根据id查询景区，相关问题和评论
    @RequestMapping("/sceneById")
    public String queryById(int id, Model model ){

        HashMap map = new HashMap();

        if (id > 0){
            map.put("id",id);
        }
        List<Scene> scenes = sceneService.querySceneByMap(map);

        Scene scene = new Scene();
        for (Scene scene1 : scenes) {
            scene=scene1;
        }

        model.addAttribute("scene",scene);

        //景点相关问题
        List<SceneQuest> sceneQuests = sceneQuestService.queryBySceneId(id);
        model.addAttribute("scenequests",sceneQuests);

        //景点相关评论
        List<SceneComment> sceneComments = sceneCommentService.queryBySceneId(id);
        model.addAttribute("scenecomments",sceneComments);


        return "sceneById";
    }

}
