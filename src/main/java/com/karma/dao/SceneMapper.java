package com.karma.dao;

import com.karma.pojo.Scene;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SceneMapper {

    List<Scene> getAllScene(Map map);

    int deleteSceneById(@Param("id") int id);

    int addScene(Scene scene);

    int updateScene(Scene scene);


}
