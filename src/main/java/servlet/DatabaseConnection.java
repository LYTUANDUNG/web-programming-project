package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	public static void main(String[] args) {
        Connection connection = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SchoolSuppliesShop;user=sa;password=123456789;encrypt = true ;trustServerCertificate = true ");
            System.out.println("Kết nối thành công tới cơ sở dữ liệu.");
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver cho SQL Server.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Lỗi khi kết nối đến cơ sở dữ liệu: " + e.getMessage());
            e.printStackTrace();
        }
        System.out.println(connection);
    }
    
}
