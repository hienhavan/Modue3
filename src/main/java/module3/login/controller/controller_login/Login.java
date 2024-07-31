package module3.login.controller.controller_login;

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
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        //Check Account Password
        boolean checkAccout;
        try {
            checkAccout = UserDao.checkAccount(email, password);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        //if true
        if (checkAccout) {
            resp.sendRedirect("/products");
            return;
        }
        //if false
        req.setAttribute("errorLogin", checkAccout);
        req.getRequestDispatcher("view/login/login.jsp").forward(req, resp);

    }
}
