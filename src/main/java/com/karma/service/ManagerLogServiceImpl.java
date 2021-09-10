package com.karma.service;

import com.karma.dao.ManagerLogMapper;
import com.karma.pojo.ManagerLog;

import java.util.List;

public class ManagerLogServiceImpl implements ManagerLogService {

    private ManagerLogMapper managerLogMapper;

    public void setManagerLogMapper(ManagerLogMapper managerLogMapper) {
        this.managerLogMapper = managerLogMapper;
    }

    @Override
    public int addManagerLog(ManagerLog managerLog) {
        return managerLogMapper.addManagerLog(managerLog);
    }

    @Override
    public List<ManagerLog> queryAllManagerLog() {
        return managerLogMapper.queryAllManagerLog();
    }
}
