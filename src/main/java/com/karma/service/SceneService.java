package com.karma.service;

import com.karma.pojo.Scene;

import java.util.List;
import java.util.Map;

public interface SceneService {
    public int addScene(Scene scene);

    public int updateScene(Scene scene);

    public List<Scene> querySceneByMap(Map map);

    public int deleteSceneById(int id);
}
