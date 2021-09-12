package com.karma.service;

import com.karma.dao.TravelNoteMapper;
import com.karma.pojo.TravelNote;

import java.util.List;

public class TravelNoteServiceImpl implements TravelNoteService {

    private TravelNoteMapper travelNoteMapper;

    public void setTravelNoteMapper(TravelNoteMapper travelNoteMapper) {
        this.travelNoteMapper = travelNoteMapper;
    }

    @Override
    public int addTravelNote(TravelNote travelNote) {
        return travelNoteMapper.addTravelNote(travelNote);
    }

    @Override
    public TravelNote queryById(int id) {
        return travelNoteMapper.queryById(id);
    }

    @Override
    public List<TravelNote> queryByUserId(int userid) {
        return travelNoteMapper.queryByUserId(userid);
    }

    @Override
    public List<TravelNote> queryByCityId(int cityid) {
        return travelNoteMapper.queryByCityId(cityid);
    }

    @Override
    public int updateStatus(int id, int status) {
        return travelNoteMapper.updateStatus(id, status);
    }

    @Override
    public int deleteTravelNote(int id) {
        return travelNoteMapper.deleteTravelNote(id);
    }

    @Override
    public List<TravelNote> queryByTitle(String title) {
        return travelNoteMapper.queryByTitle(title);
    }

    @Override
    public List<TravelNote> queryAll() {
        return travelNoteMapper.queryAll();
    }

}
