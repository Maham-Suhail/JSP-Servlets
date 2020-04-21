package com.java;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MvcServlet")
public class MvcServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Step 0: Add data
        String[] students = {"Ahmed", "fatima", "ali", "maria"};
        req.setAttribute("student_list",students);

        // Step 1: get request dispatcher
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/view_students.jsp");

        // Step 2: forward the request to JSP
        dispatcher.forward(req, resp);
    }

}

