package com.offcn.shangcheng.dao;

import com.offcn.shangcheng.bean.User;

import java.sql.SQLException;

/**
 * @author liulongpei
 * @date 2020/9/24 - 17:16
 */
public interface UserDao {
    //添加用户
    public int addUser(User user) throws SQLException;
    //查询用户信息
    public User queryUser(String username, String password) throws SQLException;
}

