package module3.bai11.controllers;

import module3.bai11.model.User;
import module3.bai11.model.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "user", urlPatterns = "/users")
public class UserCrud extends HttpServlet {

    private static final String SELECT_QUERY = "SELECT * FROM thong_tin";
    private static final String INSERT_QUERY = "INSERT INTO thong_tin (id, name, age) VALUES (?, ?, ?)";
    private static final String UPDATE_QUERY = "UPDATE thong_tin SET name=?, age=? WHERE id=?";
    private static final String DELETE_QUERY = "DELETE FROM thong_tin WHERE id=?";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = UserDao.select(SELECT_QUERY);
        req.setAttribute("data", users);
        RequestDispatcher dispatcher = req.getRequestDispatcher("bai11/view.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));

        List<User> users = UserDao.select(SELECT_QUERY);
        for (User user : users) {
            if (user.getId() == id) {
                req.setAttribute("userId", id);
                req.getRequestDispatcher("bai11/add.jsp").forward(req, resp);
                return;
            }
        }

        try {
            UserDao.insert(INSERT_QUERY, id, name, age);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        req.getRequestDispatcher("bai11/success.jsp").forward(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        UserDao.delete(DELETE_QUERY, id);
        resp.sendRedirect("users");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        try {
            UserDao.update(UPDATE_QUERY, name, age, id);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        resp.sendRedirect("users");
    }
}
