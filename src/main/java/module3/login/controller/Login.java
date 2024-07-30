package module3.login.controller;

import module3.login.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/loginUsers")
public class Login extends HttpServlet {
    private static final String CHECK_ACCOUNT = "SELECT email,password FROM users";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        boolean checkAccout = false;
        try {
            checkAccout = UserDao.checkAccount(CHECK_ACCOUNT, email, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        if (checkAccout) {
            req.getRequestDispatcher("bai11/view.jsp").forward(req, resp);
            return;
        }
        req.setAttribute("errorLogin", checkAccout);
        req.getRequestDispatcher("login/login.jsp").forward(req, resp);
//        HttpSession session = req.getSession();
//        session.setAttribute("errorLogin", checkAccout);
//        resp.sendRedirect("/login");
    }
}
