package com.karma.dao;

import com.karma.pojo.Scene;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SceneMapper {

    List<Scene> getAllScene(Map map);

    Scene getSceneById();

    int deleteSceneById();

    int addScene();

    int updateScenebyid(@Param("id") int id);
}
