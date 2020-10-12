package com.offcn.shangcheng.service;


import com.offcn.shangcheng.bean.User;

import java.sql.SQLException;


/**
 * @author liulongpei
 * @date 2020/9/24 - 17:20
 */
public interface UserService {
    //添加用户
    public int register(User user) throws SQLException;
    //查询用户信息
    public User queryUser(String username, String password) throws SQLException;

}
