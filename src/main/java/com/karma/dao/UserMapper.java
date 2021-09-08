package com.karma.dao;

import com.karma.pojo.User;
import org.apache.ibatis.annotations.Param;


/**
 * user的Mapper
 */
public interface UserMapper {

    /**
     * 添加用户
     * @param user 用户
     * @return int
     */
    int addUser(User user);

    /**
     * 删除用户
     * @param id 用户id
     * @return int
     */
    int deleteUser(@Param("userId") int id);

    /**
     * 更新用户
     * @param user 用户
     * @return int
     */
    int updateUser(User user);

    /**
     * 登录验证账号密码
     * @param user
     * @return
     */
    User doLogin(User user);

    /**
     * 验证用户名
     * @param name
     * @return
     */
    int registerCheck(@Param("username") String name);

}
