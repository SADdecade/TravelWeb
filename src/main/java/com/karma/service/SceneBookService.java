package com.karma.service;

import com.karma.pojo.SceneBook;

import java.util.List;

public interface SceneBookService {

    int addSceneBook(SceneBook sceneBook);

    List<SceneBook> queryByUserId(int userid);

}
