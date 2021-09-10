package com.karma.service;

import com.karma.dao.SceneCommentsMapper;
import com.karma.pojo.SceneComment;

import java.util.List;

public class SceneCommentServiceImpl implements SceneCommentService {


    private SceneCommentsMapper sceneCommentsMapper;

    public void setSceneCommentsMapper(SceneCommentsMapper sceneCommentsMapper) {
        this.sceneCommentsMapper = sceneCommentsMapper;
    }

    @Override
    public int addSceneComment(SceneComment sceneComment) {
        return sceneCommentsMapper.addSceneComment(sceneComment);
    }

    @Override
    public List<SceneComment> queryBySceneId(int sceneid) {
        return sceneCommentsMapper.queryBySceneId(sceneid);
    }

    @Override
    public List<SceneComment> queryByUserId(int userid) {
        return sceneCommentsMapper.queryByUserId(userid);
    }

    @Override
    public int deleteSceneComment(int id) {
        return sceneCommentsMapper.deleteSceneComment(id);
    }
}
