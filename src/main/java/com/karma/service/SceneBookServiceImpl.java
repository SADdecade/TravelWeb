package com.karma.service;

import com.karma.dao.SceneBookMapper;
import com.karma.pojo.SceneBook;

public class SceneBookServiceImpl implements SceneBookService{

    private SceneBookMapper sceneBookMapper;

    public void setSceneBookMapper(SceneBookMapper sceneBookMapper) {
        this.sceneBookMapper = sceneBookMapper;
    }

    @Override
    public int addSceneBook(SceneBook sceneBook) {
        return sceneBookMapper.addSceneBook(sceneBook);
    }
}
