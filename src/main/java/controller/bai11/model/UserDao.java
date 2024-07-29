package controller.bai11.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class
UserDao {
    public static List<User> select(String url, String username, String password, String select) {
        List<User> listUsers = new ArrayList<User>();

        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement stmt = conn.prepareStatement(select);
             ResultSet rs = stmt.executeQuery()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            User user;
            System.out.println("Database: " + conn.getCatalog());

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int age = rs.getInt("age");
                user = new User(id, name, age);
                listUsers.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return listUsers;
    }

    public static void insert(String url, String username, String password, String insert, boolean success) {
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement pstmt = conn.prepareStatement(insert)) {
            pstmt.setString(1, "3");
            pstmt.setString(2, "phong");
            pstmt.setInt(3, 25);
            success = pstmt.executeUpdate() > 0;
            System.out.println(success);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void delete(String url, String username, String password, String delete, boolean success) {
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement pstmt = conn.prepareStatement(delete)) {
            pstmt.setInt(1, 3);
            success = pstmt.executeUpdate() > 0;
            System.out.println(success);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void update(String url, String username, String password, String update, boolean success) {
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement pstmt = conn.prepareStatement(update)) {
            pstmt.setString(1, "mai");
            pstmt.setInt(2, 23);
            pstmt.setInt(3, 2);
            pstmt.executeUpdate();
            success = pstmt.executeUpdate() > 0;
            System.out.println(success);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
