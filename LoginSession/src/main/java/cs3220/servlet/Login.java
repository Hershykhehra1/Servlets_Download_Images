package cs3220.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs3220.model.UserEntry;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    public void init() throws ServletException {
        List<UserEntry> users = new ArrayList<UserEntry>();
        users.add(new UserEntry("john@gmail.com", "John", "test123"));
        users.add(new UserEntry("jane@gmail.com", "Jane", "test456"));

        getServletContext().setAttribute("users", users);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String destination = "index.jsp";
        String errorMessage = null;

        if (email.isEmpty() || password.isEmpty()) {
            errorMessage = "All fields are required";
        } else {
            List<UserEntry> users = (List<UserEntry>) getServletContext().getAttribute("users");
            boolean userFound = false;
            for (UserEntry user : users) {
                if (email.equals(user.getEmail()) && password.equals(user.getPassword())) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("name", user.getName());
                    destination = "Download";
                    userFound = true;
                    break;
                }
            }
            if (!userFound) {
                errorMessage = "User not found";
            }
        }

        request.setAttribute("errorMessage", errorMessage);

        request.getRequestDispatcher(destination).forward(request, response);
    }
}
