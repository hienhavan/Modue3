package module3.login.model;

import module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public static void signUpUser(String gmail, String password) {
        final String INSERT_QUERY = "INSERT INTO users ( email, password) VALUES ( ?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_QUERY)) {
            stmt.setString(1, gmail);
            stmt.setString(2, password);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
    }

    public static boolean checkAccountsignUpUser(String emailInPut) throws ClassNotFoundException {
        final String CHECK_ACCOUNT = "SELECT email FROM users";
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(CHECK_ACCOUNT);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                String emailUotPut = rs.getString("email");
                if (emailUotPut.equals(emailInPut)) {
                    return false;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }


    public static boolean checkAccount(String emailInPut, String passwordInPut) throws ClassNotFoundException {
        final String CHECK_ACCOUNT = "SELECT email,password FROM users";
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(CHECK_ACCOUNT);
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                String emailUotPut = rs.getString("email");
                String passwordUotPut = rs.getString("password");
                if (emailUotPut.equals(emailInPut) && passwordUotPut.equals(passwordInPut)) {
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }


    public static List<User> select(String selectQuery) {
        List<User> users = new ArrayList<>();
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(selectQuery);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("user_id");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                users.add(new User(id, email, password));
            }
        } catch (SQLException e) {
            throw new RuntimeException("Error executing select query", e);
        }
        return users;
    }
}

