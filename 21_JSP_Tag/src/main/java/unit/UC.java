package unit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Unit Controller", value = "/unit")
public class UC extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        
        request.setAttribute("contentPage", "unit/index.jsp");

        request.getRequestDispatcher("main.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        UnitModel.calcUnit(request);

        request.setAttribute("contentPage", "unit/output.jsp");

        request.getRequestDispatcher("main.jsp").forward(request, response);
    }

    public void destroy() {
    }
}
