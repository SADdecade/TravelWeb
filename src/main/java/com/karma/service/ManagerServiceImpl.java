package com.karma.service;

import com.karma.dao.ManagerMapper;
import com.karma.pojo.Manager;
import org.springframework.stereotype.Service;

public class ManagerServiceImpl implements ManagerService{

    private ManagerMapper managerMapper;

    public void setManagerMapper(ManagerMapper managerMapper){this.managerMapper = managerMapper;
    }

    @Override
    public boolean login(Manager manager) {
        return managerMapper.login(manager.getUsername()).getPassword().equals(manager.getPassword());
    }
}
