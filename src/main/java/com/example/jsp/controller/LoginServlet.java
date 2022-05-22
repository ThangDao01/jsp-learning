package com.example.jsp.controller;

import com.example.jsp.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login-form.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do post");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User model = new User(username, password,"jdbc");
        if (model.checkLogin()) {
            response.sendRedirect("home");
        } else {
            System.out.println(username + password);
            response.sendRedirect("login-servlet");
        }
        System.out.println("do post 2");
    }
}
