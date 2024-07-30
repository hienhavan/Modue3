package module3.login.model;

import module3.login.sevice.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    public static void signUpUser(String insertQuery, String gmail, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(insertQuery)) {
            stmt.setString(1, gmail);
            stmt.setString(2, password);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error executing insert query", e);
        }
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

    public static boolean checkAccount(String selectQuery, String emailInPut, String passwordInPut) throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement statement = conn.prepareStatement(selectQuery);
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
}
