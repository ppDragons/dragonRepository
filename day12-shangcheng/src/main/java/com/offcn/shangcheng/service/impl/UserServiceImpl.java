package com.offcn.shangcheng.service.impl;

import com.offcn.shangcheng.bean.User;
import com.offcn.shangcheng.dao.impl.UserDaoImpl;
import com.offcn.shangcheng.service.UserService;


import javax.annotation.Resource;
import java.sql.SQLException;

/**
 * @author liulongpei
 * @date 2020/9/24 - 17:21
 */
public class UserServiceImpl implements UserService {
    @Resource
    private UserDaoImpl udi;
    //添加用户
    @Override
    public int register(User user) throws SQLException {
        return udi.addUser(user);
    }
    //查询用户信息
    @Override
    public User queryUser(String username, String password) throws SQLException {
        try {
            return udi.queryUser(username,password);
        } catch (Exception e) {
            return null;
        }
    }
}
