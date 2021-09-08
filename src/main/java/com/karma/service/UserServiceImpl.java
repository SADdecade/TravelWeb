package com.karma.service;

import com.karma.dao.UserMapper;
import com.karma.pojo.User;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper=userMapper;
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public boolean registerCheck(String username) {
        return userMapper.registerCheck(username)==0;
    }

}
