package com.java.web.jdbc;
import sun.print.PrinterJobWrapper;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    //define datasource /connection pool for resource injection
    @Resource(name = "jdbc/student_tracker")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //step 1: set up printwriter
        PrintWriter out = response.getWriter();
        response.setContentType("text/plain");

        //step 2: get a connection for database
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            //step 3: create a sql statement
            String sql = "select * from student";
            statement = connection.createStatement();
            //step 4:Execute sql query
            resultSet = statement.executeQuery(sql);
            //step 5: process the result set
            while(resultSet.next())
            {
                 String email = resultSet.getString("email");
                 out.println(email);
            }

        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }


    }
}
