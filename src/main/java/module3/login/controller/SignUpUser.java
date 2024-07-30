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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserDao.signUpUser(INSERT_QUERY, email, password);
        req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = module3.bai11.model.UserDao.select(SELECT_QUERY);
        req.setAttribute("data", users);
        req.getRequestDispatcher("bai11/view.jsp").forward(req, resp);
    }

}

