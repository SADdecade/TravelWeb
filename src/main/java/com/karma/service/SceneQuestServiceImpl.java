package com.karma.service;

import com.karma.dao.SceneQuestMapper;
import com.karma.pojo.SceneQuest;

import java.util.List;

public class SceneQuestServiceImpl implements SceneQuestService {

    private SceneQuestMapper sceneQuestMapper;

    public void setSceneQuestMapper(SceneQuestMapper sceneQuestMapper) {
        this.sceneQuestMapper = sceneQuestMapper;
    }

    @Override
    public int addSceneQuest(SceneQuest sceneQuest) {
        return sceneQuestMapper.addSceneQuest(sceneQuest);
    }

    @Override
    public List<SceneQuest> queryBySceneId(int sceneid) {
        return sceneQuestMapper.queryBySceneId(sceneid);
    }

    @Override
    public List<SceneQuest> queryByUserId(int userid) {
        return sceneQuestMapper.queryByUserId(userid);
    }

    @Override
    public int deleteSceneQuest(int id) {
        return sceneQuestMapper.deleteSceneQuest(id);
    }

    @Override
    public int updateStatus(int id, int status) {
        return sceneQuestMapper.updateStatus(id, status);
    }

    @Override
    public SceneQuest queryById(int id) {
        return sceneQuestMapper.queryById(id);
    }
}
