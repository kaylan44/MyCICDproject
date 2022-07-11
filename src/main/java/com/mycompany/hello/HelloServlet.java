package com.mycompany.hello;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD>");
        out.println("<TITLE>Hello Servlet</TITLE>");
        out.println("</HEAD>");
        out.println("<BODY>");
        out.println("<h1>Hello Servlet</h1>");
        out.println("The deployment of the WebApp is working fine !!");   
        out.println("<img src='https://giphy.com/embed/IwAZ6dvvvaTtdI8SD5'>");        
        out.println("<h5>Youpi</h5>");
        out.println("</BODY>");
        out.println("</HTML>");
    }
}
