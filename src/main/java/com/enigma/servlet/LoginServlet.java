package com.enigma.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        // Validasi login
        if ("admin".equals(userId) && "password".equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("userId", userId);
            response.sendRedirect("dashboard");
        } else {
            response.sendRedirect("login.jsp?error=Invalid credentials");
        }
    }
}


