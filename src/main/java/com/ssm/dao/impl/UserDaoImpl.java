package com.ssm.dao.impl;

import com.ssm.dao.UserDao;
import com.ssm.domain.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao{
    public UserDaoImpl(){
        super.setNs("mapper.UserMapper");
    }
}
