package com.karma.dao;

import com.karma.pojo.SceneBook;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SceneBookMapper {

    int addSceneBook(SceneBook sceneBook);

    List<SceneBook> queryByUserId(@Param("userid") int userid);

}
