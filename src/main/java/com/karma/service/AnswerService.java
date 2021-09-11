package com.karma.service;

import com.karma.pojo.Answers;

import java.util.List;

public interface AnswerService {

    int addAnswer(Answers answer);

    //删除问题
    int deleteAnswer(int id);

    //修改问题状态
    int updateStatus(int id,int status);

    //根据问题id查找回答
    List<Answers> queryByQuestId(int questid);

}
