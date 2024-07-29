package controller.bai11.controlers;

import controller.bai11.model.User;
import controller.bai11.model.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "user", urlPatterns = "/users")
public class UserControlller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String url = "jdbc:mysql://localhost:3306/users";
        String username = "root";
        String password = "";
        String select = "SELECT * FROM thong_tin";
        String insert = "INSERT INTO thong_tin (id,name,age) VALUES (?,?,?)";
        String delete = "DELETE FROM thong_tin WHERE id = ?";
        String update = "UPDATE thong_tin SET name=?,age=? where id = ?";
        boolean success = false;
        List<User> users = UserDao.select(url, username, password, select);
        System.out.println(users);
        req.setAttribute("date", users);
        req.getRequestDispatcher("bai11/view.jsp").forward(req, resp);
    }


//    public static void main(String[] args) {


//        controller.bai11.model.TestDb.insert(url, username, password, insert, success);
//        controller.bai11.model.TestDb.select(url, username, password, select);
//        controller.bai11.model.TestDb.delete(url, username, password, delete, success);
//        UserDao.update(url, username, password, update, success);
//    }
}
