package com.wickedwitch;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Servlet01 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //default method used if no other is specified in the html file
        String firstName = req.getParameter("fname");
        String lastName = req.getParameter("lname");
        String fullName = lastName + ", " + firstName;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //app used POST method - specified in index.html
        String firstName = req.getParameter("fname");
        String lastName = req.getParameter("lname");
        String fullName = lastName + ", " + firstName;

        req.setAttribute("name", fullName);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/output.jsp");
        requestDispatcher.forward(req, resp);



        /*
        //redirect response to url:
        resp.sendRedirect("http://www.google.com");
        resp.sendRedirect("test.html");

        PrintWriter printWriter = resp.getWriter();
        //HTML code inside servlet
        printWriter.println("<html><body><h1> Hello " + fullName + "</h1></body></html>");
        */
    }
}
