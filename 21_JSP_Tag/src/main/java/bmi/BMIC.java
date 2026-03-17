package bmi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BMI Controller", value = "/bmi")
public class BMIC extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("contentPage", "bmi/index.jsp");

        request.getRequestDispatcher("main.jsp").forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        BmiModel.calc(request);

        request.setAttribute("contentPage", "bmi/result.jsp");

        request.getRequestDispatcher("main.jsp").forward(request,response);
    }

    public void destroy() {
    }
}