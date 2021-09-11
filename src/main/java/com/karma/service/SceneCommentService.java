package com.karma.service;

import com.karma.pojo.SceneComment;

import java.util.List;

public interface SceneCommentService {

    int addSceneComment(SceneComment sceneComment);

    List<SceneComment> queryBySceneId(int sceneid);

    List<SceneComment> queryByUserId(int userid);

    int deleteSceneComment(int id);

}
