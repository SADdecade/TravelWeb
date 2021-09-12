package com.karma.dao;

import com.karma.pojo.SceneQuest;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SceneQuestMapper {


    int addSceneQuest(SceneQuest sceneQuest);

    List<SceneQuest> queryBySceneId(@Param("sceneid") int sceneid);

    List<SceneQuest> queryByUserId(@Param("userid") int userid);

    int deleteSceneQuest(@Param("id") int id);

    //修改问题状态
    int updateStatus(@Param("questid") int id, @Param("status") int status);

    SceneQuest queryById(@Param("id") int id);

}
