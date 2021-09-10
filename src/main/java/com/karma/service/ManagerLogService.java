package com.karma.service;

import com.karma.pojo.ManagerLog;

import java.util.List;

public interface ManagerLogService {

    int addManagerLog(ManagerLog managerLog);

    List<ManagerLog> queryAllManagerLog();
}
