package com.karma.service;

import com.karma.pojo.SceneQuest;

import java.util.List;

public interface SceneQuestService {

    int addSceneQuest(SceneQuest sceneQuest);

    List<SceneQuest> queryBySceneId(int sceneid);

    List<SceneQuest> queryByUserId(int userid);

    int deleteSceneQuest(int id);

    //修改问题状态
    int updateStatus(int id, int status);

    SceneQuest queryById(int id);

}
