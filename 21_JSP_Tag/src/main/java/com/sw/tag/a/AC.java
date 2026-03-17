package com.sw.tag.a;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "A Controller", value = "/a")
public class AC extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("AC: GET");

        request.setAttribute("contentPage", "a/a.jsp");

        request.getRequestDispatcher("main.jsp").forward(request,response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
    
    public void destroy() {
    }
}