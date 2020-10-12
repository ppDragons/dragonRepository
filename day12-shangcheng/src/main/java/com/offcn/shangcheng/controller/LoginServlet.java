package com.offcn.shangcheng.controller;

import com.offcn.shangcheng.bean.User;
import com.offcn.shangcheng.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @author liulongpei
 * @date 2020/9/24 - 19:58
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserServiceImpl usi = new UserServiceImpl();
        User user = null;
        try {
            user = usi.queryUser(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (user == null) {
            response.sendRedirect("jsp/Login.jsp?message=loginError");
        } else {
            //保存登录信息
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            System.out.println(user);
            response.sendRedirect("/ShowProductServlet");
        }
    }
}
