package com.offcn.shangcheng.dao.impl;

import com.offcn.shangcheng.bean.User;
import com.offcn.shangcheng.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author liulongpei
 * @date 2020/9/24 - 17:16
 */
@Service
public class UserDaoImpl implements UserDao {
    @Resource
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    //添加用户
    @Override
    public int addUser(User user) throws SQLException {
        String sql = "insert into t_user(username,password,email,name,sex,birthday) values(?,?,?,?,?,?)";
        return jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getName(), user.getSex(), user.getBirthday());
    }

    //查询用户信息
    @Override
    public User queryUser(String username, String password) throws SQLException {
        String sql = "select username,password,email,name,sex,birthday from t_user where username = ? and password = ?";
        return jdbcTemplate.queryForObject(sql, new RowMapper<User>() {
                @Override
                public User mapRow(ResultSet rs, int i) throws SQLException {
                    User user = new User();
                    user.setBirthday(rs.getDate("birthday"));
                    user.setEmail(rs.getString("email"));
                    user.setName(rs.getString("name"));
                    user.setPassword(rs.getString("password"));
                    user.setSex(rs.getString("sex"));
                    return user;
                }
            }, username, password);
    }
}
