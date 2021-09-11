package com.karma.dao;


import com.karma.pojo.ManagerLog;

import java.util.List;

public interface ManagerLogMapper {

    int addManagerLog(ManagerLog managerLog);

    List<ManagerLog> queryAllManagerLog();

}
