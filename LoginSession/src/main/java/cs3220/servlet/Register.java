package cs3220.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cs3220.model.UserEntry;

@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Register() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("Register.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        String errorMessage = null;

        if (email.isEmpty() || name.isEmpty() || password.isEmpty()) {
            errorMessage = "All fields are required";
        }

        if (errorMessage != null) {
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {
            List<UserEntry> users = (List<UserEntry>) getServletContext().getAttribute("users");
            if (users == null) {
                users = new ArrayList<>();
                getServletContext().setAttribute("users", users);
            }

            users.add(new UserEntry(email, name, password));

            response.sendRedirect("Login");
        }
    }
}
