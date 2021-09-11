package com.karma.service;

import com.karma.pojo.TravelComment;

import java.util.List;

public interface TravelCommentService {

    int addTravelComment(TravelComment travelComment);

    List<TravelComment> queryByTripId(int tripid);

    List<TravelComment> queryByUserId(int userid);

    int deleteTravelComment(int id);
}
