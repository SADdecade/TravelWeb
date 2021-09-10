package com.karma.dao;

import com.karma.pojo.SceneComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SceneCommentsMapper {

    int addSceneComment(SceneComment sceneComment);

    List<SceneComment> queryBySceneId(@Param("sceneid") int sceneid);

    List<SceneComment> queryByUserId(@Param("userid") int userid);

    int deleteSceneComment(@Param("id") int id);

}
