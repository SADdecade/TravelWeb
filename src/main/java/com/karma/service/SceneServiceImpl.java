package com.karma.service;

import com.karma.dao.SceneMapper;
import com.karma.pojo.Scene;

import java.util.List;
import java.util.Map;

public class SceneServiceImpl implements SceneService{

    private SceneMapper sceneMapper;

    public void setSceneMapper(SceneMapper sceneMapper) {
        this.sceneMapper = sceneMapper;
    }

    @Override
    public int addScene(Scene scene) {
        return sceneMapper.addScene(scene);
    }

    @Override
    public int updateScene(Scene scene) {
        return sceneMapper.updateScene(scene);
    }

    @Override
    public List<Scene> querySceneByMap(Map map) {
        return sceneMapper.getAllScene(map);
    }

    @Override
    public int deleteSceneById(int id) {
        return 0;
    }
}
