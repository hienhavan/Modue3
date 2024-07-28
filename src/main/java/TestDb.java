import java.sql.*;

public class TestDb {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/users";
        String username = "root";
        String password = "";
        String select = "SELECT * FROM thong_tin";
        String insert = "INSERT INTO thong_tin (id,name,age) VALUES (?,?,?)";
        String delete = "DELETE FROM thong_tin WHERE id = ?";
        String update = "UPDATE thong_tin SET name=?,age=? where id = ?";
        boolean success = false;
//        TestDb.insert(url, username, password, insert, success);
//        TestDb.select(url, username, password, select);
//        TestDb.delete(url, username, password, delete, success);
        TestDb.update(url, username, password, update, success);
    }

    public static void select(String url, String username, String password, String select) {
        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement stmt = conn.prepareStatement(select);
             ResultSet rs = stmt.executeQuery()) {

            System.out.println("Database: " + conn.getCatalog());

            while (rs.next()) {
                // Giả sử bảng 'users' có các cột như 'id' và 'name'
                int id = rs.getInt("id");
                String name = rs.getString("name");
                System.out.println("ID: " + id + ", Name: " + name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
