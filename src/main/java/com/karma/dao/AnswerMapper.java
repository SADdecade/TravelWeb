package com.karma.dao;

import com.karma.pojo.Answers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AnswerMapper {

    int addAnswer(Answers answer);

    //删除问题
    int deleteAnswer(@Param("answerId") int id);

    //修改问题状态
    int updateStatus(@Param("answerId") int id, @Param("status") int status);

    //根据问题id查找回答
    List<Answers> queryByQuestId(@Param("questId") int questid);

}
