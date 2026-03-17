package com.sw.sc;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Home Controller", value = "/home-c")
public class HomeC extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void destroy() {
    }
}