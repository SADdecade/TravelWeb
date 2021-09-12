package com.karma.dao;

import com.karma.pojo.TravelNote;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TravelNoteMapper {

    int addTravelNote(TravelNote travelNote);

    TravelNote queryById(@Param("id") int id);

    List<TravelNote> queryByUserId(@Param("userid") int userid);

    List<TravelNote> queryByCityId(@Param("cityid") int cityid);

    int updateStatus(@Param("id") int id,@Param("status") int status);

    int deleteTravelNote(@Param("id") int id);

    //模糊查询
    List<TravelNote> queryByTitle(@Param("title") String title);

    List<TravelNote> queryAll();

}
