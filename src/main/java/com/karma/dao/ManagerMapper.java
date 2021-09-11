package com.karma.dao;

import com.karma.pojo.Manager;
import org.apache.ibatis.annotations.Param;

public interface ManagerMapper {

    Manager login(@Param("username")String username);

}
