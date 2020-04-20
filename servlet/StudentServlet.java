package javaClasses;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//annotation where we call servlets
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet{
    //httpServlet doGet method
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //step 1: set content type
        response.setContentType("text/html");
        //step 2: get the printWriter
        PrintWriter out = response.getWriter();
        //step 3: generate html content
         out.println("<html><body>");
         out.println("The Student is confirmed: "+
                 request.getParameter("firstName")+" "+
                 request.getParameter("lastName"));
         out.println("</html></body>");

    }
}
