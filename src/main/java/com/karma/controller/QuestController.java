package com.karma.controller;

import com.karma.pojo.Answers;
import com.karma.pojo.SceneQuest;
import com.karma.service.AnswerService;
import com.karma.service.SceneQuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/quest")
public class QuestController {

    @Autowired
    @Qualifier("SceneQuestServiceImpl")
    private SceneQuestService sceneQuestService;

    @Autowired
    @Qualifier("AnswerServiceImpl")
    private AnswerService answerService;

    //根据id查询问题
    @RequestMapping("/questById")
    public String questById(int id, Model model){

        SceneQuest quest = sceneQuestService.queryById(id);
        model.addAttribute("quest",quest);

        List<Answers> answers = answerService.queryByQuestId(id);
//        for(Answers answers1:answers){
//            System.out.println(answers1);
//        }
        model.addAttribute("answers",answers);

        return "questById";
    }

    @RequestMapping("/updateStatus")
    public String updateStatus(int sceneid,int id,Model model){
        sceneQuestService.updateStatus(id,2);
        return "redirect:/scene/sceneById?id="+sceneid;
    }

}
