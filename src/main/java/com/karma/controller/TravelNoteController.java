package com.karma.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.karma.pojo.TravelComment;
import com.karma.pojo.TravelNote;
import com.karma.service.TravelCommentService;
import com.karma.service.TravelNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/travelnote")
public class TravelNoteController {

    @Autowired
    @Qualifier("TravelNoteServiceImpl")
    private TravelNoteService travelNoteService;

    @Autowired
    @Qualifier("TravelCommentServiceImpl")
    private TravelCommentService travelCommentService;

    //根据城市查询游记
    @RequestMapping("/travelnoteByCity")
    public String queryByCity(Model model){
        List<TravelNote> list = travelNoteService.queryByCityId(1);
        model.addAttribute("list",list);
        return "travelnoteByCity";
    }

    //根据Id查询游记，相关评论
    @RequestMapping("/travelnoteById")
    public String queryById(int id, Model model){

        TravelNote travelNote = travelNoteService.queryById(id);
        model.addAttribute("travelNote",travelNote);

        List<TravelComment> travelComments = travelCommentService.queryByTripId(id);
        model.addAttribute("travelcomments",travelComments);

        return "travelnoteById";
    }

    //所有
    @RequestMapping("/queryAll")
    public String queryAll(@RequestParam(value = "pn",defaultValue = "1") int pn, Model model){


        PageHelper.startPage(pn,3);

        List<TravelNote> travelNotes = travelNoteService.queryAll();

        PageInfo page = new PageInfo(travelNotes,5);
        model.addAttribute("pageInfo",page);

        return "travelnoteAll";
    }

    @RequestMapping("/deletetravelnote")
    public String deleteScene(int id, HttpSession session){
        travelNoteService.deleteTravelNote(id);
        session.removeAttribute("msg");
        session.setAttribute("msg","删除成功");
        return "redirect:/Manager/travelnote";
    }


}
