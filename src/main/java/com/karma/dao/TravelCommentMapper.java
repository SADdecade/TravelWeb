package com.karma.dao;

import com.karma.pojo.TravelComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TravelCommentMapper {

    int addTravelComment(TravelComment travelComment);

    List<TravelComment> queryByTripId(@Param("tripid") int cityid);

    List<TravelComment> queryByUserId(@Param("userid") int userid);

    int deleteTravelComment(@Param("id") int id);

}
