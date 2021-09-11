package com.karma.service;

import com.karma.dao.TravelCommentMapper;
import com.karma.pojo.TravelComment;

import java.util.List;

public class TravelCommentServiceImpl implements TravelCommentService {

    private TravelCommentMapper travelCommentMapper;

    public void setTravelCommentMapper(TravelCommentMapper travelCommentMapper) {
        this.travelCommentMapper = travelCommentMapper;
    }

    @Override
    public int addTravelComment(TravelComment travelComment) {
        return travelCommentMapper.addTravelComment(travelComment);
    }

    @Override
    public List<TravelComment> queryByTripId(int tripid) {
        return travelCommentMapper.queryByTripId(tripid);
    }

    @Override
    public List<TravelComment> queryByUserId(int userid) {
        return travelCommentMapper.queryByUserId(userid);
    }

    @Override
    public int deleteTravelComment(int id) {
        return travelCommentMapper.deleteTravelComment(id);
    }
}
