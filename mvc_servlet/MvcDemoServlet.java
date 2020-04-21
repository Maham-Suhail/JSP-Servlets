package com.java;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/MvcDemoServlet")
public class MvcDemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //step 1: get student helper class (model)

        List<Student> students = StudentDataUtil.getStudent();

        //step 2: add students to request object
        req.setAttribute("student_list",students);
        //step 3: get request dispatcher
        RequestDispatcher requestDispatcher =
                req.getRequestDispatcher("/view_student_list.jsp");
        //step 4: now forward to jsp
        requestDispatcher.forward(req,resp);
    }
}
