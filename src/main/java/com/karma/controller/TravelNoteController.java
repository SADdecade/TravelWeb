package com.karma.controller;

import com.karma.pojo.TravelNote;
import com.karma.service.TravelNoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/travelnote")
public class TravelNoteController {

    @Autowired
    @Qualifier("TravelNoteServiceImpl")
    private TravelNoteService travelNoteService;

    //根据景区查询游记
    @RequestMapping("/travelnoteByCity")
    public String queryByCity(Model model){
        List<TravelNote> list = travelNoteService.queryByCityId(1);
        model.addAttribute("list",list);
        return "travelnoteByCity";
    }

    //根据景区查询游记
    @RequestMapping("/travelnoteById")
    public String queryById(int id, Model model, HttpServletRequest request){

        TravelNote travelNote = travelNoteService.queryById(id);
        model.addAttribute("travelNote",travelNote);

        return "travelnoteById";
    }


}
