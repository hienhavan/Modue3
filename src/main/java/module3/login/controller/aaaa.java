package module3.login.controller;

import module3.login.model.User;
import module3.login.model.UserDao;

import java.util.List;

public class aaaa {
    private static final String SELECT_QUERY = "SELECT * FROM users";
    private static final String INSERT_QUERY = "INSERT INTO users ( email, password) VALUES ( ?, ?)";
    private static final String  gmail = "123@342";
    private static final String password = "123";

    public static void main(String[] args) {
        UserDao.signUpUser(INSERT_QUERY,gmail,password);
    }
}
