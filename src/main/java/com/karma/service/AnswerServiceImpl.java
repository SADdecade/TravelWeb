package com.karma.service;

import com.karma.dao.AnswerMapper;
import com.karma.pojo.Answers;

import java.util.List;

public class AnswerServiceImpl implements AnswerService {

    private AnswerMapper answerMapper;

    public void setAnswerMapper(AnswerMapper answerMapper) {
        this.answerMapper = answerMapper;
    }

    @Override
    public int addAnswer(Answers answer) {
        return answerMapper.addAnswer(answer);
    }

    @Override
    public int deleteAnswer(int id) {
        return answerMapper.deleteAnswer(id);
    }

    @Override
    public int updateStatus(int id, int status) {
        return answerMapper.updateStatus(id, status);
    }

    @Override
    public List<Answers> queryByQuestId(int questid) {
        return answerMapper.queryByQuestId(questid);
    }
}
