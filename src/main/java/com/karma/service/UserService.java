package com.karma.service;

import com.karma.pojo.User;

public interface UserService {

    /**
     * 用户添加
     * @param user 用户
     * @return
     */
    int addUser(User user);


    /**
     * 用户名重复检查
     * @param username
     * @return
     */
    boolean registerCheck(String username);

}
