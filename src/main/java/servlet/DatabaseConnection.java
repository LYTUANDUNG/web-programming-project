package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {

    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SchoolSuppliesShop;user=sa;password=123456789;encrypt=true;trustServerCertificate=true");
            System.out.println("Kết nối thành công tới cơ sở dữ liệu.");
            statement = connection.createStatement(); 
            String sql = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'";
            resultSet = statement.executeQuery(sql);

            System.out.println("Danh sách các bảng trong cơ sở dữ liệu:");
            while (resultSet.next()) {
                System.out.println(resultSet.getString("TABLE_NAME"));
            }

        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver cho SQL Server.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Lỗi khi kết nối đến cơ sở dữ liệu: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
