package module3.login.controller;

import module3.bai11.model.User;
import module3.login.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SingUpUser", urlPatterns = "/SignUp")
public class SignUpUser extends HttpServlet {

    private static final String INSERT_QUERY = "INSERT INTO users ( email, password) VALUES ( ?, ?)";
    private static final String SELECT_QUERY = "SELECT * FROM users";
    private static final String  CHECK_ACCOUNT = "SELECT email FROM users";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String passwordConfirm = req.getParameter("password-confirm");
        boolean checkPassword = false;
        if (!password.equals(passwordConfirm)) {
            req.setAttribute("errorPassword", checkPassword);
            req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
            return;
        }
        UserDao.signUpUser(INSERT_QUERY, email, password);
        req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
    }

}

