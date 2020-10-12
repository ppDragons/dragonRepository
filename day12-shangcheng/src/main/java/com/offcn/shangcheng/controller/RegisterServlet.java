package com.offcn.shangcheng.controller;

import com.offcn.shangcheng.bean.User;
import com.offcn.shangcheng.service.impl.UserServiceImpl;
import com.offcn.shangcheng.uitl.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @author liulongpei
 * @date 2020/9/24 - 17:22
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String birthday = request.getParameter("birthday");

        User user = new User();
        user.setBirthday(DateUtil.stringToDate(birthday));
        user.setSex(sex);
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setUsername(username);

        UserServiceImpl usi = new UserServiceImpl();
        try {
            int result = usi.register(user);

            response.sendRedirect("jsp/Login.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
