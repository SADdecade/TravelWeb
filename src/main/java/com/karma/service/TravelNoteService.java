package com.karma.service;

import com.karma.pojo.TravelNote;

import java.util.List;

public interface TravelNoteService {

    int addTravelNote(TravelNote travelNote);

    TravelNote queryById(int id);

    List<TravelNote> queryByUserId(int userid);

    List<TravelNote> queryByCityId(int cityid);

    int updateStatus(int id,int status);

    int deleteTravelNote(int id);
}
